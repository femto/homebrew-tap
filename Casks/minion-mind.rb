cask "minion-mind" do
  version "0.2.79"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "dd25959c01c9ec9a41bcf6851794a06245fcc0ad56202250daefeb30dddfae7c",
         intel: "0909efecac71d26dd909c0cbe03121d5ff918e45d59711e7cc8a83f19bfc2658"

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
