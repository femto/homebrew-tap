cask "minion-mind" do
  version "0.2.108"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "50878ef01692af0121a41d2a45f88dda263340fc04ce1d36162eba8530b1126c",
         intel: "b1572b388e1519d9cdba309abbd99e3a571c34a5a4e9ea328d15c6e1728e348f"

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
