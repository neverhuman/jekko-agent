# Architecture

jekko-agent is a split-family child of the Jekko portal. It owns only the code needed for jankurai, jankurai-runner, sandboxctl and carries local support crates when a primary crate would otherwise depend on a sibling split repository.

## Workspace Shape

- `crates/agent-search`
- `crates/jankurai`
- `crates/jankurai-runner`
- `crates/jekko-core`
- `crates/jekko-store`
- `crates/sandboxctl`
- `crates/zyal-core`

## Runtime Boundaries

The root `Cargo.toml`, `Cargo.lock`, `Justfile`, `ops/ci/*.sh`, `scripts/ci-local.sh`, and `agent/*.json` files are the canonical navigation and proof surface. Runtime state, profile data, local env files, build outputs, logs, receipts, and downloaded artifacts stay ignored.
