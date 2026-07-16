cask "minion-mind" do
  version "0.2.159"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "d62ed6b76973ef59abe93b6774506360a0190a91653937664de8bbe56016bb17",
         intel: "ed97b468cb9d1b29185ac39dab0d4294e81a509978cad73cade1686f7b8268ba"

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
