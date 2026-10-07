cask "minion-mind" do
  version "0.2.184"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "b88b251e8dcd0ea9a9de856eabb4e0cc2b716f2384fe288fd8cfc8d373f6371c",
         intel: "88d5c232f53fa36d9fc36eb1eb85133a6cd26280091b14d7dc763f12614d1597"

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
