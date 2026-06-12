# jankurai Repo Score

- Standard: `jankurai`
- Auditor: `1.6.1`
- Schema: `1.9.0`
- Paper edition: `2026.05-ed8`
- Target stack ID: `rust-ts-vite-react-postgres-bounded-python`
- Target stack: `Rust core + TypeScript/React/Vite + PostgreSQL + generated contracts + exception-only Python AI/data service`
- Repo: `.`
- Run ID: `1781228484`
- Started at: `1781228484`
- Elapsed: `5162` ms
- Scope: `full`
- Raw score: `84`
- Final score: `84`
- Decision: `advisory`
- Minimum score: `85`
- Caps applied: `none`

## Hard Rule Caps

| Rule | Max Score | Applied |
| --- | ---: | --- |
| `no-root-agent-instructions` | 75 | no |
| `no-one-command-setup-or-validation` | 70 | no |
| `no-deterministic-fast-lane` | 65 | no |
| `no-security-lane-on-high-risk-repo` | 60 | no |
| `generated-contracts-or-public-api-drift-untested` | 80 | no |
| `python-direct-product-truth-or-db-ownership` | 72 | no |
| `no-secret-or-dependency-scanning-in-ci` | 78 | no |
| `no-jankurai-audit-lane-in-ci` | 82 | no |
| `jankurai-required-tool-ci-evidence-gap` | 88 | no |
| `non-optimal-product-language-found` | 74 | no |
| `too-much-python-in-product-surface` | 72 | no |
| `boundary-reclassification-evidence-gap` | 72 | no |
| `vibe-placeholders-in-product-code` | 68 | no |
| `fallback-soup-in-product-code` | 70 | no |
| `future-hostile-dead-language-in-product-code` | 64 | no |
| `severe-duplication-in-product-code` | 70 | no |
| `generated-zone-mutation-risk` | 76 | no |
| `direct-db-access-from-wrong-layer` | 66 | no |
| `missing-web-e2e-lane` | 82 | no |
| `missing-rendered-ux-qa-lane` | 84 | no |
| `prompt-injection-risk` | 78 | no |
| `overbroad-agent-agency` | 65 | no |
| `secret-like-content-detected` | 60 | no |
| `false-green-test-risk` | 76 | no |
| `destructive-migration-risk` | 70 | no |
| `authz-or-data-isolation-gap` | 78 | no |
| `input-boundary-gap` | 78 | no |
| `agent-tool-supply-chain-gap` | 78 | no |
| `release-readiness-gap` | 80 | no |
| `missing-rust-property-or-integration-tests` | 82 | no |
| `no-agent-friendly-exception-pattern` | 76 | no |
| `missing-agent-readable-docs` | 80 | no |
| `streaming-runtime-drift` | 78 | no |
| `rust-bad-behavior` | 72 | no |
| `sql-bad-behavior` | 72 | no |
| `typescript-bad-behavior` | 72 | no |
| `docker-bad-behavior` | 72 | no |
| `python-bad-behavior` | 72 | no |
| `ci-bad-behavior` | 70 | no |
| `git-bad-behavior` | 70 | no |
| `gittools-bad-behavior` | 70 | no |
| `release-bad-behavior` | 70 | no |
| `web-security-bad-behavior` | 68 | no |
| `repo-rot-bad-behavior` | 88 | no |
| `comment-hygiene-dangerous-residue` | 72 | no |
| `ci-local-parity` | 70 | no |

## Copy-Code Redundancy

- Status: `review` hard=`0` warning=`18` files=`283`
- Policy: min-lines=`10` min-tokens=`100` max-findings=`50` include-tests=`false` strict=`false`
- Duplicate volume: lines=`64` tokens=`180` bytes=`1593`

- Notes:
  - hard classes are limited to exact active-source file matches and substantial exact same-name units
  - warning classes include same-body different-name units and token/block duplication
  - tests, fixtures, stories, config, Docker, and migrations are omitted unless --include-tests is set

| Kind | Severity | Language | Lines | Tokens | Instances | Reason |
| --- | --- | --- | ---: | ---: | --- | --- |
| `ExactUnitSameName` | `Warning` | `rust` | 12 | 33 | `crates/jekko-store/build.rs:197-209, crates/jekko-store/src/migration.rs:237-249` | `same-name semantic unit copied across multiple files` |
| `ExactUnitDifferentName` | `Warning` | `rust` | 9 | 15 | `crates/jankurai-runner/src/bin_main/hero_series/files.rs:25-34, crates/jankurai-runner/src/hero_judge_runner_helpers.rs:132-141` | `same body appears under different names across files` |
| `ExactUnitSameName` | `Warning` | `rust` | 7 | 16 | `crates/jankurai-runner/src/worker_pool.rs:142-149, crates/jankurai-runner/src/worktree.rs:170-177` | `same-name semantic unit copied across multiple files` |
| `ExactUnitDifferentName` | `Warning` | `rust` | 2 | 1 | `crates/jankurai-runner/src/hero_judge/population.rs:140-142, crates/jankurai-runner/src/port/plan.rs:161-163, crates/jankurai-runner/src/port_runner/config.rs:65-67, crates/sandboxctl/src/spec_types.rs:169-171` | `same body appears under different names across files` |
| `ExactUnitDifferentName` | `Warning` | `rust` | 2 | 1 | `crates/jankurai-runner/src/hero_judge/config.rs:103-105, crates/jankurai-runner/src/hero_judge/population.rs:152-154, crates/jankurai-runner/src/hero_judge/population.rs:156-158, crates/jankurai-runner/src/hero_judge/population.rs:160-162` | `same body appears under different names across files` |
| `ExactUnitSameName` | `Warning` | `rust` | 5 | 44 | `crates/jekko-store/build.rs:190-195, crates/jekko-store/src/migration.rs:230-235` | `same-name semantic unit copied across multiple files` |
| `ExactUnitDifferentName` | `Warning` | `rust` | 5 | 12 | `crates/jankurai-runner/src/reasoning_io.rs:318-323, crates/jankurai-runner/src/reasoning_io.rs:330-335` | `same body appears under different names across files` |
| `ExactUnitDifferentName` | `Warning` | `rust` | 5 | 11 | `crates/jankurai-runner/src/locks.rs:53-58, crates/jankurai-runner/src/locks.rs:66-71` | `same body appears under different names across files` |
| `ExactUnitDifferentName` | `Warning` | `rust` | 4 | 8 | `crates/jankurai-runner/src/hero_judge_runner_completion.rs:126-130, crates/jankurai-runner/src/reasoning_io.rs:342-346` | `same body appears under different names across files` |
| `ExactUnitSameName` | `Warning` | `rust` | 2 | 9 | `crates/jekko-store/build.rs:186-188, crates/jekko-store/src/migration.rs:226-228` | `same-name semantic unit copied across multiple files` |
| `ExactUnitSameName` | `Warning` | `rust` | 2 | 3 | `crates/jekko-core/src/keybind/chord.rs:106-108, crates/jekko-core/src/keybind/set.rs:62-64` | `same-name semantic unit copied across multiple files` |
| `ExactUnitDifferentName` | `Warning` | `rust` | 1 | 1 | `crates/zyal-core/src/forbidden.rs:107-108, crates/zyal-core/src/forbidden.rs:115-116, crates/zyal-core/src/forbidden.rs:137-138` | `same body appears under different names across files` |
| `ExactUnitSameName` | `Warning` | `rust` | 2 | 2 | `crates/jankurai-runner/src/hero_judge/population.rs:180-182, crates/jankurai-runner/src/port/target.rs:114-116` | `same-name semantic unit copied across multiple files` |
| `ExactUnitSameName` | `Warning` | `rust` | 2 | 1 | `crates/jankurai-runner/src/hero_judge/population.rs:140-142, crates/jankurai-runner/src/port/plan.rs:161-163` | `same-name semantic unit copied across multiple files` |
| `ExactUnitDifferentName` | `Warning` | `rust` | 1 | 7 | `crates/jekko-store/src/daemon/port/graph_model.rs:131-132, crates/jekko-store/src/daemon/reasoning/artifacts.rs:161-162` | `same body appears under different names across files` |
| `ExactUnitDifferentName` | `Warning` | `rust` | 1 | 7 | `crates/jekko-store/src/daemon/reasoning/artifacts.rs:142-143, crates/jekko-store/src/daemon/reasoning/memory.rs:113-114` | `same body appears under different names across files` |
| `ExactUnitDifferentName` | `Warning` | `rust` | 1 | 6 | `crates/jekko-store/src/session/part.rs:79-80, crates/jekko-store/src/session/session_message.rs:94-95` | `same body appears under different names across files` |
| `ExactUnitDifferentName` | `Warning` | `rust` | 1 | 3 | `crates/jankurai-runner/src/classifier.rs:337-338, crates/jankurai-runner/src/classifier.rs:348-349` | `same body appears under different names across files` |

## Dimensions

| Dimension | Weight | Score | Weighted | Evidence |
| --- | ---: | ---: | ---: | --- |
| Ownership and navigation surface | 13 | 100 | 13.00 | root `AGENTS.md` present; owner map present |
| Contract and boundary integrity | 13 | 88 | 11.44 | contract surface found; generated contract artifacts found |
| Proof lanes and test routing | 12 | 96 | 11.52 | one-command setup/validation lane found; deterministic fast lane found |
| Security and supply-chain posture | 12 | 80 | 9.60 | lockfile present; secret or dependency scan tooling found |
| Code shape and semantic surface | 12 | 80 | 9.60 | largest authored code file: crates/jankurai-runner/src/classifier.rs (393 LOC); most code files stay under 300 LOC |
| Data truth and workflow safety | 8 | 100 | 8.00 | database surface present; structured db boundary manifest present |
| Observability and repair evidence | 8 | 88 | 7.04 | observability libraries or patterns found; ops/observability directory present |
| Context economy and agent instructions | 7 | 93 | 6.51 | root `AGENTS.md` present; root `AGENTS.md` stays short |
| Jankurai tool adoption and CI replacement | 7 | 25 | 1.75 | control-plane files present; applicable=16 |
| Python containment and polyglot hygiene | 4 | 100 | 4.00 | no Python files in scope |
| Build speed signals | 4 | 30 | 1.20 | locked dependency graph present |

## Reference Profile Structure

- Applicable cells: `2` canonical=`2` noncanonical=`0` guidance missing=`0`

| Cell | Status | Canonical | Detected | Aliases | Guidance | Owner | Proof lane | Agent fix |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `web` | `not_applicable` | `apps/web/` | `-` | `frontend/, ui/, packages/web/, packages/ui/` | `not_required` | `apps/web` | `rendered UX / Playwright` | `no action` |
| `api` | `not_applicable` | `apps/api/` | `-` | `api/, server/, backend/` | `not_required` | `apps/api` | `edge handler / contract tests` | `no action` |
| `domain` | `not_applicable` | `crates/domain/` | `-` | `domain/, core/` | `not_required` | `crates/domain` | `unit / property tests` | `no action` |
| `application` | `not_applicable` | `crates/application/` | `-` | `application/, usecases/, use-cases/` | `not_required` | `crates/application` | `use-case / authz tests` | `no action` |
| `adapters` | `not_applicable` | `crates/adapters/` | `-` | `adapters/, infra/, integrations/` | `not_required` | `crates/adapters` | `adapter integration tests` | `no action` |
| `workers` | `not_applicable` | `crates/workers/` | `-` | `workers/, jobs/, scheduler/, queue/` | `not_required` | `crates/workers` | `workflow / replay tests` | `no action` |
| `contracts` | `not_applicable` | `contracts/` | `-` | `openapi/, protobuf/, json-schema/, generated/` | `not_required` | `contracts` | `generation / drift checks` | `no action` |
| `db` | `canonical` | `db/` | `db` | `migrations/, constraints/, sql/` | `present` | `db` | `migration / constraint tests` | `keep `db/AGENTS.md` aligned with owns / forbidden / proof lane guidance` |
| `python-ai` | `not_applicable` | `python/ai-service/` | `-` | `python/, ai-service/, evals/, embeddings/, model/` | `not_required` | `python/ai-service` | `eval / contract tests` | `no action` |
| `ops` | `canonical` | `ops/` | `.github, .github/workflows, ops` | `.github/, .github/workflows/, ci/, release/, observability/, security/` | `present` | `ops` | `security lane / workflow lint` | `keep `ops/AGENTS.md` aligned with owns / forbidden / proof lane guidance` |

## Rendered UX QA

- Web surface: `false`
- Layered UX lane: `true`
- Missing: `none`

## Tool Adoption

- Control plane present: `true`
- Applicable tools: `16`
- Configured: `12`
- CI evidence: `0`
- Artifact verified: `0`
- Replaced count: `0`
- Missing CI evidence: `audit-ci, proof-routing, proofbind, proofmark-rust, copy-code, security, ci-bad-behavior, git-bad-behavior, release-bad-behavior, db-migration-analyze, contract-drift, rust-witness, authz-matrix, agent-tool-supply, release-readiness, cost-budget`

| Tool | Category | Mode | Status | Replaced | Artifacts |
| --- | --- | --- | --- | --- | --- |
| `audit-ci` | `audit` | `advisory` | `configured` | `manual repo scoring, ad hoc score gates` | `.jankurai/repo-score.json, .jankurai/repo-score.md` |
| `proof-routing` | `proof` | `advisory` | `configured` | `ad hoc proof lane selection, manual proof receipts` | `.jankurai/repo-score.json, .jankurai/repo-score.md, target/jankurai/repair-queue.jsonl` |
| `proofbind` | `proof` | `auto` | `configured` | `manual changed-surface routing, ad hoc proof obligation lists` | `target/jankurai/proofbind/surface-witness.json, target/jankurai/proofbind/obligations.json` |
| `proofmark-rust` | `proof` | `auto` | `configured` | `line-only coverage review, manual in-diff mutation review` | `target/jankurai/proofmark/proofmark-receipt.json, target/jankurai/proofmark/proof-receipt.json` |
| `copy-code` | `audit` | `auto` | `missing` | `ad hoc copy-code review, manual duplication triage` | `target/jankurai/copy-code.json, target/jankurai/copy-code.md` |
| `security` | `security` | `advisory` | `configured` | `gitleaks, dependency review, SBOM/provenance` | `target/jankurai/security/evidence.json` |
| `ci-bad-behavior` | `security` | `advisory` | `configured` | `mutable workflow refs, secret echo/debug workflow checks, non-blocking security scans` | `target/jankurai/language-bad-behavior.log` |
| `git-bad-behavior` | `audit` | `advisory` | `configured` | `destructive git automation, force-push release scripts, hidden stash-based state` | `target/jankurai/language-bad-behavior.log` |
| `release-bad-behavior` | `release` | `auto` | `configured` | `manual release checklist, ad hoc tag and artifact review, manual provenance review` | `target/jankurai/language-bad-behavior.log` |
| `ux-qa` | `ux` | `auto` | `not_applicable` | `playwright, axe-core, visual baselines` | `target/jankurai/ux-qa.json` |
| `db-migration-analyze` | `db` | `auto` | `missing` | `manual migration review` | `target/jankurai/migration-report.json` |
| `contract-drift` | `contract` | `auto` | `missing` | `handwritten contract drift checks, openapi diff` | `.jankurai/repo-score.json, .jankurai/repo-score.md` |
| `rust-witness` | `rust` | `auto` | `configured` | `manual witness graphing` | `target/jankurai/rust/witness-graph.json` |
| `vibe-coverage` | `audit` | `auto` | `not_applicable` | `manual vibe-coding coverage spreadsheet` | `target/jankurai/vibe-coverage.json, target/jankurai/vibe-coverage.md` |
| `coverage-evidence` | `proof` | `auto` | `not_applicable` | `manual coverage report review, ad hoc mutation survivor review` | `target/jankurai/coverage/coverage-audit.json, target/jankurai/coverage/coverage-audit.md` |
| `authz-matrix` | `security` | `auto` | `missing` | `manual authz matrix review` | `.jankurai/repo-score.json, .jankurai/repo-score.md` |
| `input-boundary` | `security` | `auto` | `not_applicable` | `manual unsafe sink review` | `.jankurai/repo-score.json, .jankurai/repo-score.md` |
| `agent-tool-supply` | `security` | `advisory` | `configured` | `manual MCP/tool trust review` | `.jankurai/repo-score.json, .jankurai/repo-score.md` |
| `release-readiness` | `release` | `auto` | `configured` | `manual launch checklist` | `.jankurai/repo-score.json, .jankurai/repo-score.md` |
| `cost-budget` | `release` | `auto` | `configured` | `manual spend review` | `.jankurai/repo-score.json, .jankurai/repo-score.md` |

## Boundary Reclassifications

No audited runtime boundary reclassifications declared.

## Findings

1. `medium` `shape` `.`
   Rule: `HLT-001-DEAD-MARKER`
   Check: `HLT-001-DEAD-MARKER:shape` `soft` confidence `0.76`
   Route: TLR `Entropy`, lane `fast`, owner `tools`
   Docs: `docs/audit-rubric.md#future-hostile-language-rule`
   Reason: `Code shape and semantic surface` scored 80 below the standard floor of 85
   Fix: split large or ambiguous authored code into smaller semantic modules with focused tests
   Rerun: `just fast`
   Fingerprint: `sha256:3475eb13c56e04f34324f6431923f87490fb60b08f424648da78663829a1787b`
   Evidence: largest authored code file: crates/jankurai-runner/src/classifier.rs (393 LOC), most code files stay under 300 LOC, copy-code advisory classes found: 18 (advisory only, no score impact), rust bad-behavior advisory signals: 713
2. `medium` `security` `.github/workflows/jankurai.yml`
   Rule: `HLT-016-SUPPLY-CHAIN-DRIFT`
   Check: `HLT-016-SUPPLY-CHAIN-DRIFT:security` `soft` confidence `0.76`
   Route: TLR `Security, secrets, agency`, lane `security`, owner `ci-release`
   Docs: `docs/audit-rubric.md#top-level-risk-mapping`
   Reason: `Security and supply-chain posture` scored 80 below the standard floor of 85
   Fix: wire secret, dependency, provenance, and workflow scans into an operational CI lane
   Rerun: `just security`
   Fingerprint: `sha256:3e21704bc51e05ff9b3194cbc4eea62a77cce19f572ea9056e29ca3ce474c7bd`
   Evidence: lockfile present, secret or dependency scan tooling found, provenance/SBOM tooling found, workflow linting tooling found
3. `medium` `proof` `Justfile`
   Rule: `HLT-018-PERF-CONCURRENCY-DRIFT`
   Check: `HLT-018-PERF-CONCURRENCY-DRIFT:proof` `soft` confidence `0.76`
   Route: TLR `Verification`, lane `fast`, owner `ci-release`
   Docs: `docs/testing.md`
   Reason: `Build speed signals` scored 30 below the standard floor of 85
   Fix: add fast deterministic build/test targets, caches, and narrow proof lanes for agent iteration
   Rerun: `just fast`
   Fingerprint: `sha256:5a2a647775dcb2bfabb2b25a7bc50806600cb3d9e0da806eb6ff5379b36f84c5`
   Evidence: locked dependency graph present
4. `medium` `governance` `db/migrations/0001_init.sql`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/0001_init.sql` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/0001_init.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:9eb50a09d7845f6182d3787efe58d5e57446366cc34d7b0d97788267d72815f1`
   Evidence: `db/migrations/0001_init.sql` was hand-edited inside declared generated zone `db/migrations/`
5. `medium` `governance` `db/migrations/20260127222353_familiar_lady_ursula/meta.toml`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260127222353_familiar_lady_ursula/meta.toml` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260127222353_familiar_lady_ursula/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:07ceb174972f0832b48a3a110e9e0862efd5460d3f30ae14f944a84444ba25b2`
   Evidence: `db/migrations/20260127222353_familiar_lady_ursula/meta.toml` was hand-edited inside declared generated zone `db/migrations/`
6. `medium` `governance` `db/migrations/20260127222353_familiar_lady_ursula/migration.sql`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260127222353_familiar_lady_ursula/migration.sql` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260127222353_familiar_lady_ursula/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:79b94e335731140d341fa94cafe410b6161c9ea45f4adfdbad25c4e4aacf8100`
   Evidence: `db/migrations/20260127222353_familiar_lady_ursula/migration.sql` was hand-edited inside declared generated zone `db/migrations/`
7. `medium` `governance` `db/migrations/20260127222353_familiar_lady_ursula/snapshot.json`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260127222353_familiar_lady_ursula/snapshot.json` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260127222353_familiar_lady_ursula/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:6cff897208aa619787dedd5bc1d19d73924e47941fe1497bbc25231b43f32b3b`
   Evidence: `db/migrations/20260127222353_familiar_lady_ursula/snapshot.json` was hand-edited inside declared generated zone `db/migrations/`
8. `medium` `governance` `db/migrations/20260211171708_add_project_commands/meta.toml`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260211171708_add_project_commands/meta.toml` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260211171708_add_project_commands/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:559fe8ebbb9d3df791343a69d87962742f1b836ede14c00c1cd86074bb865b3e`
   Evidence: `db/migrations/20260211171708_add_project_commands/meta.toml` was hand-edited inside declared generated zone `db/migrations/`
9. `medium` `governance` `db/migrations/20260211171708_add_project_commands/migration.sql`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260211171708_add_project_commands/migration.sql` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260211171708_add_project_commands/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:4a64f9c7335ab543d2b5bdd8d68ac4378858191d2f82dd2d786d7aace4d8bb4d`
   Evidence: `db/migrations/20260211171708_add_project_commands/migration.sql` was hand-edited inside declared generated zone `db/migrations/`
10. `medium` `governance` `db/migrations/20260211171708_add_project_commands/snapshot.json`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260211171708_add_project_commands/snapshot.json` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260211171708_add_project_commands/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:b442b2c4487d67d36080cdb928002ba9e4c5e3411c63dfc59a56d910b2c53fb4`
   Evidence: `db/migrations/20260211171708_add_project_commands/snapshot.json` was hand-edited inside declared generated zone `db/migrations/`
11. `medium` `governance` `db/migrations/20260213144116_wakeful_the_professor/meta.toml`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260213144116_wakeful_the_professor/meta.toml` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260213144116_wakeful_the_professor/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:52de400ccb638c6f9b62f3fea7cec8d690ec20cb886585c08b1d0ae1973b16ec`
   Evidence: `db/migrations/20260213144116_wakeful_the_professor/meta.toml` was hand-edited inside declared generated zone `db/migrations/`
12. `medium` `governance` `db/migrations/20260213144116_wakeful_the_professor/migration.sql`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260213144116_wakeful_the_professor/migration.sql` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260213144116_wakeful_the_professor/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:14b6060d04623bb0d72b90e4ece2f863a41dc157001712311e4df947df8fdbce`
   Evidence: `db/migrations/20260213144116_wakeful_the_professor/migration.sql` was hand-edited inside declared generated zone `db/migrations/`
13. `medium` `governance` `db/migrations/20260213144116_wakeful_the_professor/snapshot.json`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260213144116_wakeful_the_professor/snapshot.json` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260213144116_wakeful_the_professor/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:c2e593c14ac4902de509db42898c658d1bf1d058c2242c3ffcf80eda8ac55d94`
   Evidence: `db/migrations/20260213144116_wakeful_the_professor/snapshot.json` was hand-edited inside declared generated zone `db/migrations/`
14. `medium` `governance` `db/migrations/20260225215848_workspace/meta.toml`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260225215848_workspace/meta.toml` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260225215848_workspace/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:f6456e7908f14b0559b0e77f2761bf02f740c091a21ec20440cb5d03377bd8b7`
   Evidence: `db/migrations/20260225215848_workspace/meta.toml` was hand-edited inside declared generated zone `db/migrations/`
15. `medium` `governance` `db/migrations/20260225215848_workspace/migration.sql`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260225215848_workspace/migration.sql` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260225215848_workspace/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:64aa529c5e0c4c02eef3710858bb601120ccdb885a0548ea2a772b22180b8e6b`
   Evidence: `db/migrations/20260225215848_workspace/migration.sql` was hand-edited inside declared generated zone `db/migrations/`
16. `medium` `governance` `db/migrations/20260225215848_workspace/snapshot.json`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260225215848_workspace/snapshot.json` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260225215848_workspace/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:6729cdc343425d1bb89844829777756925810501c9dd195fba85b19ea165374e`
   Evidence: `db/migrations/20260225215848_workspace/snapshot.json` was hand-edited inside declared generated zone `db/migrations/`
17. `medium` `governance` `db/migrations/20260227213759_add_session_workspace_id/meta.toml`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260227213759_add_session_workspace_id/meta.toml` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260227213759_add_session_workspace_id/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:8ecf1dbc55791925bef61b1be03e5430f6987bf12088f04f73d5f03f47a6939e`
   Evidence: `db/migrations/20260227213759_add_session_workspace_id/meta.toml` was hand-edited inside declared generated zone `db/migrations/`
18. `medium` `governance` `db/migrations/20260227213759_add_session_workspace_id/migration.sql`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260227213759_add_session_workspace_id/migration.sql` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260227213759_add_session_workspace_id/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:7ee546b38f57c88fa5dba0e6048959083f3990a9e114af0cc91b54644a689af3`
   Evidence: `db/migrations/20260227213759_add_session_workspace_id/migration.sql` was hand-edited inside declared generated zone `db/migrations/`
19. `medium` `governance` `db/migrations/20260227213759_add_session_workspace_id/snapshot.json`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260227213759_add_session_workspace_id/snapshot.json` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260227213759_add_session_workspace_id/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:216840905e114188cb3cdc7f8e2c0f51c1c8c17ee1e64a8055b2598d0b09f7d5`
   Evidence: `db/migrations/20260227213759_add_session_workspace_id/snapshot.json` was hand-edited inside declared generated zone `db/migrations/`
20. `medium` `governance` `db/migrations/20260228203230_blue_harpoon/meta.toml`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260228203230_blue_harpoon/meta.toml` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260228203230_blue_harpoon/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:18d8ee8161b88953cee78bd218cb91ce6bab998ae3bc6d82f05636b9152ce9a3`
   Evidence: `db/migrations/20260228203230_blue_harpoon/meta.toml` was hand-edited inside declared generated zone `db/migrations/`
21. `medium` `governance` `db/migrations/20260228203230_blue_harpoon/migration.sql`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260228203230_blue_harpoon/migration.sql` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260228203230_blue_harpoon/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:4bba31a1d9c2d8b022a16ec43c86f353b84a2fa6905a272373fd2105415308d9`
   Evidence: `db/migrations/20260228203230_blue_harpoon/migration.sql` was hand-edited inside declared generated zone `db/migrations/`
22. `medium` `governance` `db/migrations/20260228203230_blue_harpoon/snapshot.json`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/20260228203230_blue_harpoon/snapshot.json` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/20260228203230_blue_harpoon/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:e9a7b131d1b10ceb45d2c62f6721dae1048211e2276fee8f6f588ccf441ad3f1`
   Evidence: `db/migrations/20260228203230_blue_harpoon/snapshot.json` was hand-edited inside declared generated zone `db/migrations/`
23. `medium` `governance` `db/migrations/README.md`
   Rule: `HLT-045-GENERATED-ZONE-GOVERNANCE`
   Check: `HLT-045-GENERATED-ZONE-GOVERNANCE:governance` `soft` confidence `0.76`
   Route: TLR `Contracts/data`, lane `contract`, owner `data`
   Docs: `agent/JANKURAI_STANDARD.md#generated-zones`
   Reason: generated zone `db/migrations/` has an uncommitted hand-edit at `db/migrations/README.md` instead of a regeneration
   Fix: revert the in-place edit to `db/migrations/README.md` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Rerun: `just fast`
   Fingerprint: `sha256:5d2fd628372810295d0ae592c0e855a290baacbccc16ee8f140e74b71231a186`
   Evidence: `db/migrations/README.md` was hand-edited inside declared generated zone `db/migrations/`

## Policy

- Policy file: `./agent/audit-policy.toml`
- Minimum score: `85`
- Fail on: ``

## Agent Fix Queue

1. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/0001_init.sql` - revert the in-place edit to `db/migrations/0001_init.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
2. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260127222353_familiar_lady_ursula/meta.toml` - revert the in-place edit to `db/migrations/20260127222353_familiar_lady_ursula/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
3. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260127222353_familiar_lady_ursula/migration.sql` - revert the in-place edit to `db/migrations/20260127222353_familiar_lady_ursula/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
4. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260127222353_familiar_lady_ursula/snapshot.json` - revert the in-place edit to `db/migrations/20260127222353_familiar_lady_ursula/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
5. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260211171708_add_project_commands/meta.toml` - revert the in-place edit to `db/migrations/20260211171708_add_project_commands/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
6. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260211171708_add_project_commands/migration.sql` - revert the in-place edit to `db/migrations/20260211171708_add_project_commands/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
7. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260211171708_add_project_commands/snapshot.json` - revert the in-place edit to `db/migrations/20260211171708_add_project_commands/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
8. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260213144116_wakeful_the_professor/meta.toml` - revert the in-place edit to `db/migrations/20260213144116_wakeful_the_professor/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
9. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260213144116_wakeful_the_professor/migration.sql` - revert the in-place edit to `db/migrations/20260213144116_wakeful_the_professor/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
10. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260213144116_wakeful_the_professor/snapshot.json` - revert the in-place edit to `db/migrations/20260213144116_wakeful_the_professor/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
11. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260225215848_workspace/meta.toml` - revert the in-place edit to `db/migrations/20260225215848_workspace/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
12. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260225215848_workspace/migration.sql` - revert the in-place edit to `db/migrations/20260225215848_workspace/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
13. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260225215848_workspace/snapshot.json` - revert the in-place edit to `db/migrations/20260225215848_workspace/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
14. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260227213759_add_session_workspace_id/meta.toml` - revert the in-place edit to `db/migrations/20260227213759_add_session_workspace_id/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
15. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260227213759_add_session_workspace_id/migration.sql` - revert the in-place edit to `db/migrations/20260227213759_add_session_workspace_id/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
16. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260227213759_add_session_workspace_id/snapshot.json` - revert the in-place edit to `db/migrations/20260227213759_add_session_workspace_id/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
17. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260228203230_blue_harpoon/meta.toml` - revert the in-place edit to `db/migrations/20260228203230_blue_harpoon/meta.toml` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
18. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260228203230_blue_harpoon/migration.sql` - revert the in-place edit to `db/migrations/20260228203230_blue_harpoon/migration.sql` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
19. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/20260228203230_blue_harpoon/snapshot.json` - revert the in-place edit to `db/migrations/20260228203230_blue_harpoon/snapshot.json` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
20. `medium` `HLT-045-GENERATED-ZONE-GOVERNANCE` `db/migrations/README.md` - revert the in-place edit to `db/migrations/README.md` and regenerate it from the declared source/command in `agent/generated-zones.toml`; do not patch generated output by hand
   Route: `Contracts/data`/`contract`
21. `medium` `HLT-018-PERF-CONCURRENCY-DRIFT` `Justfile` - add fast deterministic build/test targets, caches, and narrow proof lanes for agent iteration
   Route: `Verification`/`fast`
22. `medium` `HLT-001-DEAD-MARKER` `.` - split large or ambiguous authored code into smaller semantic modules with focused tests
   Route: `Entropy`/`fast`
23. `medium` `HLT-016-SUPPLY-CHAIN-DRIFT` `.github/workflows/jankurai.yml` - wire secret, dependency, provenance, and workflow scans into an operational CI lane
   Route: `Security, secrets, agency`/`security`
