cask "minion-mind" do
  version "0.2.173"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "702133ecc8badf5dece8850b59a792818c1f9b96c78e258441abc72da5d96a8a",
         intel: "63cd441c5192b937a1c8a811c8636d7b78854bd90e4a951c567a5fdc23854f4a"

  url "https://github.com/femto/minion-mind-releases/releases/download/v#{version}/Minion-Mind-#{version}-#{arch}-mac.dmg"
  name "Minion Mind"
  desc "Open-source personal knowledge management app compatible with Obsidian vault format"
  homepage "https://github.com/femto/minion-mind"

  app "Minion Mind.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-d", "com.apple.quarantine", "#{appdir}/Minion Mind.app"]
  end
end
