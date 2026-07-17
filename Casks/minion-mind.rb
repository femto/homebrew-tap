cask "minion-mind" do
  version "0.2.163"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "586f31f47439e44eeac3d7f4213e170742b1f9379f611971f999b5f9b01dab57",
         intel: "cde2763a46273ba297df9cc13dd4c3c775ee580749bdf000a5d3a37027467dbc"

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
