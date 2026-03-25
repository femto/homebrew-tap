cask "minion-mind" do
  version "0.2.106"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "0b4d8df31326376ed38f07ec6d680455fbb8ed90491e6405579ae46d1fca12a2",
         intel: "533db5ac4c69fb952583db5e017a5c83802cdb84bb89ee82840a2c54b4f67f70"

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
