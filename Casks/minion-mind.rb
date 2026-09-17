cask "minion-mind" do
  version "0.2.171"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "3d5175de4e763b0dbb4de94c3f059e2deb6722bb67cd3585b722d04c67c4c486",
         intel: "1afb2ac6183d13d89755488de39c7241355b468ed6a2f32ed57c0a7d3a7d5bee"

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
