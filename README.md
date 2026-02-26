# Minion Mind Homebrew Tap

## Install

```bash
brew tap femto/tap
brew install --cask minion-mind
```

Optional: install into user Applications folder.

```bash
brew install --cask --appdir=~/Applications minion-mind
```

If macOS still blocks launch due to quarantine, you can use:

```bash
brew install --cask --no-quarantine minion-mind
```

## Update

```bash
brew upgrade --cask minion-mind
```

## Maintainers

Cask file: `Casks/minion-mind.rb`

When publishing a new release:
1) Update `version`.
2) Update `sha256` for `arm64` and `x64` DMG assets.
