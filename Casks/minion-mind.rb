cask "minion-mind" do
  version "0.2.167"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "5fbafe9b66cf589d7d08d3f9392f05ba534066c40c22b9ae715494f268b3055d",
         intel: "d229b414907d8bce6fd962b39d7ae4420cfdf2bf2929c2a985523375d381049f"

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
