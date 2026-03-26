cask "minion-mind" do
  version "0.2.110"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "b04bb69bd55781b9194c330366640970b2727d0f9e7369e66aa7c09a36e98569",
         intel: "36b10ea7e6038817635e3710252cc4b8307f9ab78aee8b8745f248e226dab103"

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
