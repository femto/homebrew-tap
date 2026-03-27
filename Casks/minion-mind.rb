cask "minion-mind" do
  version "0.2.117"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "2d74f37fb4cc555de7d274fd8ced5566ba41a2f6e0ecc3e0f3cde81b01d7359d",
         intel: "29f86fd43af6da65cd235c2fe7b67532d39fc787d6c23c58db76ad1f47de918b"

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
