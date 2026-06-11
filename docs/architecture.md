# jekko-agent Architecture

jekko-agent is the agent repository in the Jekko split family. The durable
source of truth is the Rust library under `src/`; CI and release automation
are thin shell wrappers under `ops/ci/`.

The public API surface is intentionally small: `identity()` exposes the
manifest identity and `validate_identity()` returns a typed error if that
contract drifts.
