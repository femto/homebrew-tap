cask "minion-mind" do
  version "0.2.154"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "e1bca98223743d539797e24a6d3484eee4ff3bfbf4635ee727e885e16504ae34",
         intel: "6b898ddc14370c20dcdef63a50381917169d09ae57597306a668ff3bcbd7d81e"

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
