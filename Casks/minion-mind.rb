cask "minion-mind" do
  version "0.2.85"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "2c2c469929f79e581683ace64b617e88ab738048c43db378f2eea97a37654175",
         intel: "6aa6e459ba5bac1888c2e4fb9136ccf809cc015706e9f47af1d1d480993d3455"

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
