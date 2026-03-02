cask "minion-mind" do
  version "0.2.67"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "d505931995a4fbd5242ecf2e462aa17064f9fe5d4efa5bf0643c72908d8f5f8b",
         intel: "b3b3b8658625bbedea1862e9099ce0ed6dbeb663151bab529ba5ed1f1d012a16"

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
