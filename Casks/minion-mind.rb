cask "minion-mind" do
  version "0.2.93"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "11e2ae8e3b3d544d24cfc10adbd2f198933194a3d94ac99a04be8b104ac7c5cc",
         intel: "cdb32d8d12b7371face504d086d7a6f1c16075ea1c48194ecad1237c7caca9bf"

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
