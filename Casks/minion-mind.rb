cask "minion-mind" do
  version "0.2.131"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "05e089a74a7ea4f1d088a0791754bcad9c7e2894ce8a6f0b162b97e0eed8f563",
         intel: "ec97c54ee089e92cb19706aaa85766493070a0d465ba1c6ce2d08cdf5ff061b1"

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
