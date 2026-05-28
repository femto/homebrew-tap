cask "minion-mind" do
  version "0.2.152"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "382db254e28e0e52ffbf071cc9b98c47c37f608d2b8f0d554eba93a764a49749",
         intel: "bd4c729b43db2443492fdd0eee5f36770e2b8f54d176e086b6af51ff0c7b3e4b"

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
