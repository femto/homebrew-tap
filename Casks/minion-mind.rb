cask "minion-mind" do
  version "0.2.114"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "9b7324f389b5cb2c7a53b532e808682d251398f39a6d748c7b380f8c74d04919",
         intel: "4fa4082e99615da802ec32cf76c60147e9104abf6f2215320de6c6aba77ce798"

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
