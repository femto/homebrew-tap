cask "minion-mind" do
  version "0.2.132"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "272f9136820a1497b6649d7a50be75232cde04c5c1ccfe5b0d836fece858866e",
         intel: "7dd1526fc438863f999189f34b460c83239f96dfa03f4c034510d183ba8f4a83"

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
