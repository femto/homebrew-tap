cask "minion-mind" do
  version "0.2.125"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "a464b7fa65c04619066f2560d75e8a35336e52aa2338b0b99f35e4565a1852ac",
         intel: "ca379ccb508d7d6b1a525b44873a890b75e0f1edd8d8282ed932865f7db08e80"

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
