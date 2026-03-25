cask "minion-mind" do
  version "0.2.107"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "2410fe4bda2a53be7558e0b0b72a09735c50c11956751078daa59e04425049a3",
         intel: "63610ec14b7f95bd77efa2c5cbb1b3462161526f563917e491765a6c2022eb02"

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
