cask "minion-mind" do
  version "0.2.97"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "b487745d7425eb0f7aac3713f2d3571ce719c46879f46ced22f3b60af3f8219d",
         intel: "33a013c539b7da077a94d412394b3a5c8c077a2d7e34d83f2e9a5589b8021640"

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
