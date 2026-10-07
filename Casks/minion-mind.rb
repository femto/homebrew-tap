cask "minion-mind" do
  version "0.2.182"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "d39efbf4654f7ca8043f5587828978cb71c6c00a0dd423e29aceff6a0592bab8",
         intel: "4e15636eebc69eae122fcc17e93987c6e372d987aec3e5d3b37803ff94d3ca04"

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
