cask "minion-mind" do
  version "0.2.166"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "0b6e47d360db2ae5f8be8604f8c372ce9f9a65078f94187b225528a3bf4ad4b8",
         intel: "f25cf754e174202f43125aae116ebc4b9dd4d84a6a5d433b35f249446a7f2b6d"

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
