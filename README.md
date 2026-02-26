# Minion Mind Homebrew Tap

## Install

```bash
brew install --cask femto/tap/minion-mind
```

Optional: install into user Applications folder.

```bash
brew install --cask --appdir=~/Applications minion-mind
```

If macOS still blocks launch due to quarantine, you can use:

```bash
brew install --cask --no-quarantine minion-mind
```

If you already installed via DMG, Homebrew may report an existing app at `/Applications/Minion Mind.app`. You can either force-install or delete the existing app first:

```bash
brew install --cask --force femto/tap/minion-mind
# or
rm -rf /Applications/Minion\ Mind.app
brew install --cask femto/tap/minion-mind
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
