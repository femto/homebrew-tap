cask "minion-mind" do
  version "0.2.183"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "ca796edfb90ad49cb452099cf378762200478edf6e6ebeb981d38ac020f7098a",
         intel: "74cea7acf586a85f2759262f190052c779378a3d6bcf90526c4a417c732a9b1a"

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
