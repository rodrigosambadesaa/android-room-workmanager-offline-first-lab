# Android Room + WorkManager Offline-First Lab

A compact offline-first architecture exercise. Notes are **always written to Room first** (local source of truth). A constrained WorkManager job later simulates remote synchronization and marks pending rows as synced when network connectivity is available.

The “server” is intentionally simulated so the repository is self-contained; the architectural boundary between local persistence and deferred sync is the focus.
