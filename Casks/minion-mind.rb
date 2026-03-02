cask "minion-mind" do
  version "0.2.74"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "7f30b00b46c4ee136110cbefe4180aed43d42849483fb3d73fee09972a754d9d",
         intel: "50e58606beaa25d10f4fef1d3668612f8b73a1c0c8c6161924810f5110f23222"

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
