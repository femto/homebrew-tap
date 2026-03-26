cask "minion-mind" do
  version "0.2.112"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "8f06cf593d168fe4af131a10ea180a5ca7d0d868fc2ed734fa7cd3359f9a27fb",
         intel: "35fd947e7d7b8042b11bcacd9ca9437511543414e8b04d99317558a00dcd5138"

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
