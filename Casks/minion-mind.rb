cask "minion-mind" do
  version "0.2.66"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "b63e20e179c7aa04d7318e891da631fab41f860d2852ac0dfd6a754b23909c68",
         intel: "577476e274984c165b40824b871ff539d60ed5617b408ec632a2ffd3681fc4ac"

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
