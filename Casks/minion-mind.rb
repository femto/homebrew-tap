cask "minion-mind" do
  version "0.2.80"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "6fef1ef377dda063fd1c191f7ee98b46cb9254e7635a97555cddb878ce378ddb",
         intel: "df25b3416f757f0e1dc369a89c2bdf54fc252937b49f6cc8f3ad7f9962d52dde"

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
