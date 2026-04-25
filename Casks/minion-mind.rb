cask "minion-mind" do
  version "0.2.127"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "76bb430171fe8dd0b513309aba2a4cd6d4c4bbc8945812667b160f3a9406a6de",
         intel: "343a447b24f78a557980adfb5cd9859a03762a278294222b7eb37ef720ecc5a3"

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
