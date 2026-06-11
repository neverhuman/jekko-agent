set shell := ["bash", "-euo", "pipefail", "-c"]

default: fast

home := env_var_or_default("HOME", "")
export PATH := home + "/.local/bin:" + home + "/.cargo/bin:" + env_var_or_default("PATH", "")
export TURBO_CACHE_DIR := ".turbo"
jankurai_artifact_root := env_var_or_default("JANKURAI_ARTIFACT_ROOT", "target/jankurai")
export RUSTC_WRAPPER := "sccache"
export CARGO_INCREMENTAL := "0"

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
fast: agent-fast domain-fast workspace-typecheck-fast workspace-build-fast workspace-test-fast
	: cargo build -p jekko-agent --locked --all-targets
	mkdir -p target/jankurai
	jankurai audit . --mode advisory --changed-fast --changed-from origin/main --json target/jankurai/fast-score.json --md target/jankurai/fast-audit.md --score-history target/jankurai/audit-fast.json

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-build narrow-targets=true
check:
	bash ops/ci/check.sh

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-test narrow-targets=true
test:
	bash ops/ci/test.sh

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-build narrow-targets=true
typecheck:
	bash ops/ci/typecheck.sh

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-build narrow-targets=true
build:
	bash ops/ci/build.sh

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
typecheck-fast: typecheck

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
build-fast: build

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
test-fast: test

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
workspace-typecheck-fast: typecheck-fast

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
workspace-build-fast: build-fast

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
workspace-test-fast: test-fast

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
workspace-fast: fast

# Narrow lane for the repo's fast feedback targets.
# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-build narrow-targets=true
agent-fast: agent-typecheck-fast agent-build-fast agent-test-fast

# Narrow lane for the root package typecheck only.
# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-build narrow-targets=true
agent-typecheck-fast:
	cargo check -p jekko-agent --locked --all-targets

# Narrow lane for the root package build only.
# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-build narrow-targets=true
agent-build-fast:
	cargo build -p jekko-agent --locked --all-targets

# Narrow lane for the root package test-only feedback.
# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-test narrow-targets=true
agent-test-fast:
	cargo test -p jekko-agent --locked --all-targets

# Narrow lane for the domain crate's fast feedback targets.
# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-build narrow-targets=true
domain-fast: domain-typecheck-fast domain-build-fast domain-test-fast

# Narrow lane for the domain crate typecheck only.
# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-build narrow-targets=true
domain-typecheck-fast:
	cargo check -p domain --locked --all-targets

# Narrow lane for the domain crate build only.
# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-build narrow-targets=true
domain-build-fast:
	cargo build -p domain --locked --all-targets

# Narrow lane for the domain crate test-only feedback.
# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-test narrow-targets=true
domain-test-fast:
	cargo test -p domain --locked --all-targets

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
check-dev: typecheck-fast

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
validate: fast

# jankurai:proof HLT-016-SUPPLY-CHAIN-DRIFT parallel=1 cache=turbo-build narrow-targets=true
security:
	bash ops/ci/security.sh

# jankurai:proof HLT-016-SUPPLY-CHAIN-DRIFT parallel=1 cache=turbo-build narrow-targets=true
security-fast: security

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
score:
	mkdir -p target/jankurai
	jankurai audit . --mode advisory --json target/jankurai/repo-score.json --md target/jankurai/repo-score.md --score-history target/jankurai/score-history.jsonl --score-history-csv target/jankurai/score-history.csv

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
score-fast:
	mkdir -p target/jankurai
	jankurai audit . --mode advisory --full --no-score-history --json target/jankurai/repo-score.json --md target/jankurai/repo-score.md

# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=turbo-build narrow-targets=true
performance-score-signature:
	: jankurai rust witness build .
	: jankurai audit . --mode advisory --changed-fast --json target/jankurai/fast-score.json --md target/jankurai/fast-audit.md --score-history target/jankurai/audit-fast.json
	: cargo check -p jekko-agent --locked
	: cargo check -p domain --locked
	: cargo build --workspace --locked --timings
	: cargo test -p jekko-agent --locked
	: sccache

# Build timing report for release confidence investigations.
# jankurai:proof HLT-018-PERF-CONCURRENCY-DRIFT parallel=1 cache=cargo-build narrow-targets=true
workspace-build-timings:
	cargo build --workspace --locked --timings
