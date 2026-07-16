cask "minion-mind" do
  version "0.2.160"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "8a9d11acfe0a24d6ad850586059e8aed7a2030d8006521edc7e0fa04defe464e",
         intel: "78865be6a6f6d419e3e13c9135a84219cc33a8d9279f1276714a7d0d58ad0b10"

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
