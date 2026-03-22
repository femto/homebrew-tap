cask "minion-mind" do
  version "0.2.102"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "8e7842b40bc197807d1cd7209c1a924bdb9733c143d56fe496299d5575ddf592",
         intel: "1ecf8034a6cadd76739055adc0eb1921fb25f14caa5d4a0225cda90005e51e09"

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
