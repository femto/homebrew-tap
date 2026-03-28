cask "minion-mind" do
  version "0.2.121"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "ff32396691e2f09fb5498338aa6803c3432f04a5cd9f9b39136e6236ab142020",
         intel: "4bdbd9608f69d105825441a3518499c5a93d564c02c83135e93464fe0782ac73"

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
