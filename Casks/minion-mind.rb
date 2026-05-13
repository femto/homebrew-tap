cask "minion-mind" do
  version "0.2.148"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "3d1b1d86898e7b9e62b1ac18de2d741b5cc0c08283bfd23b5079470d3a177dea",
         intel: "bb3e0d79c5cca527a8f6af420c3f381db70675f73cb52f1c686e1cb93cb96ea0"

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
