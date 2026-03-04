cask "minion-mind" do
  version "0.2.86"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "20258e1de97891eb4f6323ad52293cbba56242974614cb5fdbe8b840a3121954",
         intel: "22f1dd75c2aaea05a0e3fd0f288a134dbec80dda9bb9423e9a3f2c2d2e346c82"

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
