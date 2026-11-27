Root cause and local proof: Root cause - missing "app.py" in CMD, "/ready" url instead of "/health", fixed both and pushed to main
Running image identity: Running image identity compared with built fixed image - SAME sha256 values
Cloud Run revision and log investigation: parcelstatus-00001-good
Known-good traffic rollback proposal: parcelstatus-00001-good
Post-recovery verification and limits: After proposed rollback inspect readiness/logs and call actual service /health URL
