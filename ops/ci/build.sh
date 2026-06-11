#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT"
cargo_cache_root="${ROOT}/target/jankurai-cache"
mkdir -p "$cargo_cache_root"
export CARGO_TARGET_DIR="${CARGO_TARGET_DIR:-${cargo_cache_root}/target}"
export CARGO_HOME="${CARGO_HOME:-${cargo_cache_root}/cargo-home}"
export SCCACHE_DIR="${SCCACHE_DIR:-${cargo_cache_root}/sccache}"
export CARGO_INCREMENTAL="${CARGO_INCREMENTAL:-0}"
export RUSTC_WRAPPER="${RUSTC_WRAPPER:-sccache}"
cargo build --locked -p jekko-agent --all-targets
