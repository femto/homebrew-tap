cask "minion-mind" do
  version "0.2.165"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "a3b9789f451d6ee255bb7f3ef111ba9efa8a2779a7278c3d1905b024ce0eec3c",
         intel: "e423488f45664b6b04c88096a1ddc9a08f4e42a7f6671477c1df94e0228f5ea1"

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
