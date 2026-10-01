# AGENTS.md

## Repository mission

`SkyMapKit` is part of **Project Meridian**, the library family behind **AstroLab**.

Mission: native SwiftUI and Metal-capable interactive sky rendering and overlays.

## Hard constraints

- User-facing rendering must remain SwiftUI-native.
- Objective-C and Objective-C++ are prohibited.
- No Qt, KDE, Electron or embedded JavaScript runtime.
- Swift 6 strict concurrency.
- macOS 27 is the minimum supported platform.
- Preserve the dependency direction: SkyMapKit may depend on AstroCore and AstroCatalogKit, but not on higher-level workflow packages.

## Implementation rules

- Separate scene/model preparation from rendering.
- Keep catalog queries viewport-aware and magnitude-limited.
- Avoid loading complete large catalogs into memory.
- Rendering work must not block the main actor.
- Prefer immutable render snapshots.
- Metal may be used internally for performance without introducing AppKit view-controller ownership.
- Projection math must be testable independently of the UI.

## Codex workflow

Read `README.md` and `docs/SPEC.md` for scope-changing work. Use `PLANS.md` for substantial renderer or data-flow changes.

Before finishing:

1. Build and test.
2. Add projection and culling tests.
3. Measure renderer performance when changing hot paths.
4. Check strict-concurrency diagnostics.
5. Update docs for public API changes.
