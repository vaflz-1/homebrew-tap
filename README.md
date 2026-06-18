# vaflz-1/homebrew-tap

Homebrew tap for [PCK Bottle](https://github.com/vaflz-1/PCK-Bottle) — a native
macOS editor for Godot `.pck` packages.

```bash
brew install --cask --no-quarantine vaflz-1/tap/pck-bottle
```

`--no-quarantine` skips the Gatekeeper prompt (the app is signed ad-hoc, not
notarized). Without it, clear the flag once:

```bash
xattr -dr com.apple.quarantine "/Applications/PCK Bottle.app"
```
