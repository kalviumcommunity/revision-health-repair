Root cause and local proof: Wrong CMD caused startup failure; /ready returned 404. Corrected CMD and health path /health; container stayed running and became healthy with HTTP 200 and FailingStreak: 0.

Running image identity: [container image ID] matched [fixed image ID].

Cloud Run revision and log investigation: Deploy proposed revision [revision] in [service]/[region]; review revision-specific startup and health logs.

Known-good traffic rollback proposal: Route traffic back to known-good revision [revision] if recovery fails.

Post-recovery verification and limits: Confirm revision, traffic, startup, health, errors, and responses. Local Docker results do not prove Cloud Run recovery.