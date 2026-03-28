cask "minion-mind" do
  version "0.2.122"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "d7f05e449f6e85e9eef571bc8fe6108382497e585a69b3a62cb173ebcee80c2a",
         intel: "a215ba552bf277d70ab0432bd2ba86c7801c7fc36e5d2aa36237a3341a233c59"

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
