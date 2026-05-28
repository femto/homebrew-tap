cask "minion-mind" do
  version "0.2.151"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "f7d44142dfbe5f1e8d3aeaaa42755b707256231693499be2b76083730bbebd3d",
         intel: "5dca9d9e740faa83ba2f84b28c051ebaa5d77714b1c78d97d53ca44208d491bd"

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
