# SkyMapKit Specification

## Purpose

Native SwiftUI and Metal-capable interactive sky rendering and overlays.

## Required capabilities

- [ ] Equatorial and horizontal projections
- [ ] Pan, zoom, selection and time simulation
- [ ] Stars, deep-sky objects, constellations and labels
- [ ] Milky Way, ecliptic, coordinate grids and horizon
- [ ] Telescope position and camera field-of-view overlays
- [ ] Artificial horizon and terrain overlays
- [ ] HiPS and image overlay extension points
- [ ] Viewport culling and magnitude-adaptive rendering

## Dependencies

AstroCore and AstroCatalogKit.

## Architectural requirements

- SwiftUI owns the user-facing rendering surface.
- Projection and scene preparation remain testable outside SwiftUI.
- Catalog access is demand-driven by viewport and limiting magnitude.
- Rendering must remain responsive on the M1 baseline.
