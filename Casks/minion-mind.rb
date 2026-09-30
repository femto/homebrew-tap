cask "minion-mind" do
  version "0.2.176"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "d30dea52436b7de76854620531994064226d3cafcfca2d3cbdebcc6c4f0189f2",
         intel: "157507fb4881770c34c4f27282077bc950e8524dcbec4e85ba95f618a25bd9ba"

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
