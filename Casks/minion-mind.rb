cask "minion-mind" do
  version "0.2.150"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "1f19c05fa7c71426f3ebf64aef5c0e861184e7454e0bb81934aef7288ea5d5d4",
         intel: "3160942c8179ab394f67982ee3d252b699245f227c2675550affb76937ce1b1a"

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
