cask "minion-mind" do
  version "0.2.174"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "1edaf404c889905f94494afeabcad00b80456c195f23c2999668727855cc3984",
         intel: "aa97b79d6f5c408d1e80afb8fb77c1c08cdd34093ebe5a9a098c28d4f5cbe67f"

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
