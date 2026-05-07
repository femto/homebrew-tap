cask "minion-mind" do
  version "0.2.147"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "e6abc904ab710001a826d4d918d8885100b3c56caa990a068a4f4408515a8415",
         intel: "0238551fd33a0866081b9d2c5284b33c4eb1d99a132c606455abaf4c6cdbeedc"

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
