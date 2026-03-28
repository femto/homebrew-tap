cask "minion-mind" do
  version "0.2.120"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "5e46362ad1a28c6dc560699025bd5d5f55465cd421dbcf3fe8c1afb8f153e3cf",
         intel: "f27952b83b37fbf476e70b1729c0dfd7cdb63467cf09e72c0a31408b99a88657"

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
