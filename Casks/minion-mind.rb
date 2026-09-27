cask "minion-mind" do
  version "0.2.172"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "946d176e9b9465d4b95a5f1c5219fbce9698c737fad8fda0dcc86a4bb264775f",
         intel: "0031ba7c800fbaef4c324a7c1ed44f9753f23f8ac11ff6c5e89f80e65844495c"

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
