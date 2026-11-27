Root cause and local proof: Wrond cmd in dockerfile and port mapping
Running image identity: sha256:78f54600c5065ee92026f9a62a0827cf3a6de3468bd89092e4ab7282cd7e8588
Cloud Run revision and log investigation: curl --fail -i http://127.0.0.1:18084/health
Known-good traffic rollback proposal: Cloud Run is best for this
Post-recovery verification and limits: git diff -- Dockerfile recovery-review.md
