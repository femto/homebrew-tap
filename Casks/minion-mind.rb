cask "minion-mind" do
  version "0.2.144"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "fa50a352b1866b2b3ac948e1bce28ec920819190fceeeda121e8df3fe301c596",
         intel: "10766f62b3b5557881e12a0ba5989e75d4e8763d708a6de4642a2dd4a65d623a"

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
