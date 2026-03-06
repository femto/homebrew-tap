cask "minion-mind" do
  version "0.2.90"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "5243c34aaefdac1d22d28b8698d25a74123f225890f6d4251e21208d2261d75a",
         intel: "c1936cea4f2de4cff809487993b2e72b1d0e7ad7d6590a4a07db54e4b328c09f"

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
