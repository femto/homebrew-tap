cask "minion-mind" do
  version "0.2.77"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "e8dd7d9ca5b33eeec444500111c527dd273111e32be3f81374da5d6837e358eb",
         intel: "327dc1503345c254a8d3ddf38b2f112a7c7657e5d441fef3e5c6bb76024a81bf"

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
