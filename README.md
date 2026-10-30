# revision-health-repair

Intentionally broken DevOps Foundation Module 4 starter. Only documented faults and incomplete review lines require repair. Read assessment before editing.

## Preparation

Fork https://github.com/kalviumcommunity/revision-health-repair, clone YOUR fork and create fix/module4 branch. Free local Docker Engine/Compose, Git, terminal and PDF export only. Docker Desktop subject to its license; free Docker Engine on Linux is sufficient. No cloud account, billing, registry login, tokens, paid tools or Kubernetes cluster. Pull python:3.12-slim  before assessment. Host ports 18081-18084 and 19082 must be free. POSIX shell (Linux/macOS or prepared WSL); preparation and image downloads outside timer.

## Allowed edits

Dockerfile (CMD and health path only), recovery-review.md. Keep routes, ports, application behaviour, fixtures and baseline unchanged except explicitly permitted temporary cache comment. Capture original failure before each repair. No bypasses or fabricated evidence.

## Required behaviour and commands

Initial image builds, container exits because CMD names missing.py. Task1 repair CMD to python app.py, rebuild as parcelstatus:startup, recreate m4-q4 with APP_MODE=production and -p 18084:8080. Keep unhealthy health check until Task2; show exit/log before and stable Up after.

Task2 compare host /health 200 with unhealthy probe /ready 404; inspect .State.Health.Log. Change health path only to /health, rebuild as parcelstatus:fixed, recreate and wait for healthy. Never delete health check or suppress failures. Show running image ID equals built fixed image ID.

Task3 complete five recovery lines using real local status and fixtures/revision-record.md. Include proposed gcloud run revisions list --service parcelstatus --region us-central1; logs investigation for named revision; gcloud run services update-traffic parcelstatus --to-revisions parcelstatus-00001-good=100 --region us-central1; readiness/log/health checks and local-vs-cloud limits. Written proposals only. Cleanup docker rm -f m4-q4.

## Evidence and submission

One PDF, three labelled task sections, fork/branch URL and final commit hash. Show initial failures, actual diagnosis commands, complete corrected diff, successful checks and requested written lines. At least one real screenshot per task. Commit/push fixes to fork. No PR/video/ZIP. Written answers human-graded; static configuration alone is not runtime proof. Keep .env untracked. Wait for startup log/health state, not arbitrary immediate curl. Do not remove unrelated containers. Cleanup exercise containers only.
