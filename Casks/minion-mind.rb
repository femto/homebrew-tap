cask "minion-mind" do
  version "0.2.82"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "075d0031c5aa668a24f5b8a06b3ae68837a2dada4cd2754f44b347e4f29ce70d",
         intel: "1d83bfa24a6de8150f7eba6e0f1679f6350b998625c020c4e586ea5a98b35d3d"

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
