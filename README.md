# revision-health-repair

Intentionally broken DevOps Foundation Module 4 starter. No solved implementation or completed review answers are supplied. Diagnose and repair only the assessment tasks.

## Preparation

Fork or clone https://github.com/kalviumcommunity/revision-health-repair before assessment. Fork ownership is not graded. Use free local Docker Engine/Compose, Git and POSIX shell (Linux/macOS or prepared WSL). Docker Desktop subject to its license; Linux Docker Engine is sufficient. Pull python:3.12-slim before assessment. Reserve exercise ports only. Preparation/download delays excluded. No cloud account, billing, registry login, real credentials, paid tools or Kubernetes needed.

## Allowed edits

Dockerfile (CMD and health URL path only), recovery-review.md. Preserve all other source, routes, ports, fixtures and checks. No failure suppression or fabricated output. Existing run.sh tolerates absence of its old exercise container only; that cleanup is not an application-validation bypass.

## Required behaviour and commands

Build original image as parcelstatus:broken and run m4-q4 with APP_MODE=production, host port 18084 mapped to container port 8080. Capture actual exit status/code and startup log. Task 1 repairs only CMD to start the supplied application. Rebuild as parcelstatus:startup and recreate. Show stable running status and clean startup, leaving the health probe unchanged for Task 2.

Task 2 compares HTTP 200 at /health with Docker unhealthy status and the probe log. Repair only the health URL path to match the application endpoint; retain interval, timeout, start period, retries and probe enforcement. Build parcelstatus:fixed, recreate, wait for healthy and inspect probe history and FailingStreak, plus /health HTTP 200.

Task 3 compares running image ID against the built fixed image ID and completes five recovery-review.md lines. Use fixtures/revision-record.md to identify the hypothetical failed and known-good revisions. Propose revision listing, revision-scoped logs investigation, traffic rollback to the supplied known-good revision, and readiness/log/service-health verification. These are written proposals only; execute no cloud commands and claim no observed cloud recovery.
```sh
docker build -t parcelstatus:broken .
docker run -d --name m4-q4 -e APP_MODE=production -p 18084:8080 parcelstatus:broken
docker ps -a --filter name=m4-q4
docker logs m4-q4
docker inspect --format '{{.State.ExitCode}} {{json .State.Health}}' m4-q4
curl -i http://localhost:18084/health
```
Cleanup: docker rm -f m4-q4. Local Docker health is not a Cloud Run readiness result.

## Evidence and submission

Follow assessment's three tasks. One PDF, three labelled task sections, at least one real terminal screenshot per task, requested findings and cause/fix/result captions. Include complete corrected diff of permitted files once. Show original failures and final checks only as requested by each task. Grade only those tasks and evidence (6 + 7 + 7 = 20). Repository/fork URLs, fork ownership, branch names and submission commit hashes are not required or graded. Technical image IDs remain required where tasks ask for them. Standalone instructor evidence is valid under the same technical criteria. Written findings are manually assessed; local evidence does not prove Cloud Run deployment. No PR, video or ZIP. Cleanup only exercise containers; never expose real credentials.
