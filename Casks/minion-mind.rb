cask "minion-mind" do
  version "0.2.104"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "ac163621fc1d95beec1f57f746805869c8019bb9eff02a1961580223fa399c40",
         intel: "6d4fc0fe137d02cf5191da67c7a908cc6b03870eb65bac0d782b0b51750ff944"

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
