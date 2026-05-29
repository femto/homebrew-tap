cask "minion-mind" do
  version "0.2.156"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "21ae4b1a23fa547bcdc352567d8c8f352cfd24aad99db8f85e6d47e1db7aaa22",
         intel: "958f32e80173587eff20defa319fc73c2ba9ed35425f28211cc42193098c3c61"

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
