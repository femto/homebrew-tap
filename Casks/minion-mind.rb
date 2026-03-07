cask "minion-mind" do
  version "0.2.91"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "4bd7eb7d0907e2e54d1c87a91ab12869b0d4d022e6db603339717ae575ab54ff",
         intel: "f3610bb90b361da825fdcebab2d48e1f7b2ba48746ab3e542ceaf953d61044f4"

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
