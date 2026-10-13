# Australis Memory Information

`mem-info.exec` reports read-only physical-page availability, kernel heap use,
and memory health through the versioned Australis system-information API. It
replaces the planned standalone `heap` recovery command without exposing raw
allocator addresses.

`MemInfo.hyproj` builds `mem-info.exec`. The Australis OS aggregate includes
this project and installs the executable at `/Bin/mem-info.exec` in the read-only
HyFS 2 boot image. Run `mem-info` through the current recovery shell's `PATH`,
or use `run /Bin/mem-info.exec`.

Build this checkout with:

```bash
mkdir -p build
hy build MemInfo.hyproj -o build/mem-info.exec
```

AUEX `.exec` files currently run in the checked interpreter. Native ring-3
processes and a normal userland shell are later milestones. The boot root is
read-only; writable application data belongs on the separate `/data` volume.
The OS-level build, supported APIs, and packaging rules are described in the
Australis OS `applications/README.md`. This README describes this project's
actual source rather than treating its filename as proof of a finished feature.
