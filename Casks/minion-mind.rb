cask "minion-mind" do
  version "0.2.63"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "1ec265c4bcb2f4eb2bae001412534641c1b54303df4d6d07eb6e04507da6179f",
         intel: "35410226e1ab0ab5386b4d4db7a7118708b8341a070bb5d2b48c5aa1b3377026"

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
