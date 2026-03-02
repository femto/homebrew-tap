cask "minion-mind" do
  version "0.2.73"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "fca97f0e7287afa12ce0214c8eeb245451c236198e6c3ff6e81a2b44a0903000",
         intel: "2285fabe42fb73363b37c1985db87551eadbda0a547d5ec46a2380441d23028b"

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
