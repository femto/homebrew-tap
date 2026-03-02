cask "minion-mind" do
  version "0.2.69"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "68b802a4112757ab4d70c6fd687920281c4ebf9a2d4302633ba9201577d3862e",
         intel: "9989730173f54e95fd9cb9e6e0d7a3e2248d82c4d2f3ac7a9340c62fa1e8da19"

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
