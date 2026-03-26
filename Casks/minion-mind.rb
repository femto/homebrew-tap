cask "minion-mind" do
  version "0.2.113"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "971535c4064d2dda8552b5a15a7c6a6636654b3e55f3d5217bfcde44fe06abee",
         intel: "f8ca182357d01f5b2acef5228a938825fb7ab768856c4e65192ec338cde3779a"

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
