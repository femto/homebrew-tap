cask "minion-mind" do
  version "0.2.145"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "a20480d4b601f7eb40e0592f855ead17dbf079b11ecf816129dd99ce5c78eef5",
         intel: "49525e9d7bbd63ecfc5898b5006fb88fac70ef4838e1b3c5ceb469cccd3a9527"

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
