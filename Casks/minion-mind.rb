cask "minion-mind" do
  version "0.2.124"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "69c62f48d734716a9c3875155532338f5c35332962c322fb3d92f405c8e4b88a",
         intel: "dd8a86a2b0248dadc91dc4e1ed9e98fa67d8e6c7d2f928c08ba6f16f91ae7c60"

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
