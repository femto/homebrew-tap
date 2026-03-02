cask "minion-mind" do
  version "0.2.75"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "3925dcd33c0efffb5404c00384b1fcdff050abdb9ec5bde1c374e3512555b2ec",
         intel: "a0da5534876cb5016f27e6956de5e6db605bc2e63a089be95f61234045d52103"

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
