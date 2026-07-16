cask "minion-mind" do
  version "0.2.158"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "31a03fb5238597684667f6d3b73c07de615f71780c4b340ec9e44fae6f4b8b67",
         intel: "f9add0c1077c3d5ad8b66f509a042995a34518ad72891a07520a9d3528045427"

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
