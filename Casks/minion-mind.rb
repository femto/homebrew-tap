cask "minion-mind" do
  version "0.2.88"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "cae52aed2d0a4049cc2fcd45cd172d2c1953ecd46257bad564c83b7728eb0bd6",
         intel: "c4e4fe43e167eceaa0743b16414b9fee740b7255e18a27844e8b4110eda34924"

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
