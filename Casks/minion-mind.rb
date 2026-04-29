cask "minion-mind" do
  version "0.2.133"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "2080bc559d52fbcf86f706da14cce099646509dfc55336dc7f3025f489ace444",
         intel: "bdd7fb1f37d0ec90e8555085aa5b9a1273308be91a21e6442314abfe8142b088"

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
