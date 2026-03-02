cask "minion-mind" do
  version "0.2.68"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "3bb28bf43b8deae2e057d75b8d5989aaa79fb5eacca84b89b890866046620527",
         intel: "aa32b3a0801d1c4bbe932bc300574dbfe5e2eb062ba91c303a00e8b9efd5971d"

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
