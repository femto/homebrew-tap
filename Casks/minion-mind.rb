cask "minion-mind" do
  version "0.2.126"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "b8c6e346e55c538dce44730f9ee94ddcfe6f434dd549014b497a7725510be38b",
         intel: "7905cc5ce5a9aacd520115b2f321776a0c8ad0e0b6c5613f2040522c4ce5fda0"

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
