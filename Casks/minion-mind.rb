cask "minion-mind" do
  version "0.2.109"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "5a3db7d46251b6b08d1e75fe4b18a9bec97f2200feba950ab6383dca1e20e51c",
         intel: "27fdc903237bbe249c76cb2dd3468433bb313dbf5eb4f76ea566a1074f1beaf5"

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
