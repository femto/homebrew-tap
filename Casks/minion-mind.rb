cask "minion-mind" do
  version "0.2.177"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "aabc36d66f2dfe9bc91fd82d3ac48111a53eef1d3f2f2aeb5963c22b26e73646",
         intel: "27c9726ee7d9e72ddd640bfe964dfdfb4ff3fcec7f33a4fd9a8eccf8b2fe37a7"

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
