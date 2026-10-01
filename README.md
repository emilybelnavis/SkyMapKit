# SkyMapKit

Part of **Project Meridian**, the library family powering **AstroLab**.

SkyMapKit provides native SwiftUI and Metal-capable interactive sky rendering and overlays.

## Scope

- Equatorial and horizontal projections
- Pan, zoom, selection and time simulation
- Stars, deep-sky objects, constellations and labels
- Milky Way, ecliptic, coordinate grids and horizon
- Telescope position and camera field-of-view overlays
- Artificial horizon and terrain overlays
- HiPS and image overlay extension points
- Viewport culling and magnitude-adaptive rendering

## Direct Project Meridian dependencies

- [AstroCore](https://github.com/emilybelnavis/AstroCore)
- [AstroCatalogKit](https://github.com/emilybelnavis/AstroCatalogKit)

## Platform and implementation policy

- macOS 27+
- Apple Silicon first
- SwiftUI for user-facing rendering
- Swift 6 strict concurrency
- Objective-C prohibited

## Development

```sh
swift build
swift test
```

See `AGENTS.md`, `PLANS.md`, and `docs/SPEC.md`.
