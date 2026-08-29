cask "minion-mind" do
  version "0.2.168"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "1ac943ac96ce20edf29d9d741d88c6d2181840282ce244bc19f28ed4887cb2ff",
         intel: "3d08e5379428d5b51f36477b61b6654c8b0f6e5e69d927abf5df63484641b245"

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
