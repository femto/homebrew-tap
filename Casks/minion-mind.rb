cask "minion-mind" do
  version "0.2.136"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "f89fa870fee7d38c572b0893da79de94eba653c3893aef724928afcc7f9b31a5",
         intel: "be0224cd262f3b0b0c1a3d1f2448c70f2a9e51195034498faea2b307450b06ec"

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
