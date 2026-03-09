cask "minion-mind" do
  version "0.2.94"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "f8749ed922e67a021ea4feae3ce9d9bf7691b68e61cb594f9912eddffad4e771",
         intel: "4f86ee37f75972a35627ded8e8aabf1099da6dbba15bf3ea94b817a86da35180"

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
