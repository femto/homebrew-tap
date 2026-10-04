cask "minion-mind" do
  version "0.2.178"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "d94141e1fd5153467241e1dd2154448339c59a2699962cc8eeb7f048ea5072b8",
         intel: "47f2d0ab5b14575826cc12a9f8d6f0ae5a030272ab60803633ff032f6ac65035"

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
