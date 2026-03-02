cask "minion-mind" do
  version "0.2.76"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "0833c93339f3bdf2e2806c535840ecc61dc4b5b5f59ab47062a9374601fd8acd",
         intel: "11d3e696b67b370023567d5168d49bbf18c1019ece12c77e43d29ce6b234b4e1"

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
