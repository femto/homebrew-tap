cask "minion-mind" do
  version "0.2.134"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "30db8cf8c915a1522398dc85ae5c31d2e562b40d8bb466de93c29936987ef6b2",
         intel: "5821dfafa9425d1aef3ce51012434d2871cc16f2a1a40749aa1c2c6e5002c9a8"

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
