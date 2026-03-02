cask "minion-mind" do
  version "0.2.71"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "e1322ec09b00ce86eb351dad80c6a2f7cb4a27c88db942ff7e0a7f9dc1788bb3",
         intel: "fb6e6b179b3d397e3f8b1c70fd45ae5631869829b338c87d2f9d6200b9e1f279"

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
