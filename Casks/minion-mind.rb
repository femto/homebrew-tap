cask "minion-mind" do
  version "0.2.118"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "f2d48a50a9a03220a5e351d665cee9beb7f350c0c8b02350d6509bf0eb9057cc",
         intel: "7c297d7750ee106519a62747ebca8e9c8c5d5f62d95d2926dd88c69bccbac2f7"

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
