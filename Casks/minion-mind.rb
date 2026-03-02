cask "minion-mind" do
  version "0.2.78"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "915dcdd0e63c0c241293545fd5f057c5ce559ba5aa57b4a0ed807d9778cc47c9",
         intel: "3236689659a2030825705a743b44ffccac805e1883cae4b149d3f3d50305c4d2"

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
