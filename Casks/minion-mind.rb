cask "minion-mind" do
  version "0.2.181"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "292fd3fe2479ad84984bdd147f5f5d69a6a43ec18904cf1c6a34e7ebe5fe53b4",
         intel: "13cfdf44ef331ca0b634a1f4a7ac5bf7b0c151375e817f3e959b25789a6cffdd"

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
