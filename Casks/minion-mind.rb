cask "minion-mind" do
  version "0.2.100"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "32bd4e053cc0552e89b3ef0ef7a3de74bf5d1d3db36dd5dd9d5f7f06dd22a978",
         intel: "01c5917cdcf784bcc7ff4fafd8921e17387c523b67e931b264a91e695dc41937"

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
