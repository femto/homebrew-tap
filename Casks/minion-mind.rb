cask "minion-mind" do
  version "0.2.180"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "64e8d8a5677c8344172f058606b3031f2eda2ba63e07de2a4d9a27a53740733f",
         intel: "c9d82cc71457a133b3004264a92dea1327c2421fc3300c4ccb60f29c30d64147"

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
