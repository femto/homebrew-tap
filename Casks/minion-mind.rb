cask "minion-mind" do
  version "0.2.164"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "4fd22a2ae593f1840c2f9c53cbd8e76487c33702f2952e4434ea0ac05217e4fe",
         intel: "940b95abc381e2cc87d3c4234e1a2cd5e90c5fe09e88166c30e0299a646b2d93"

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
