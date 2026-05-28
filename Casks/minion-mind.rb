cask "minion-mind" do
  version "0.2.149"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "d23028b002e973a6fbac9f3f4d99376758e0b8ff9252d66a10746032341adbd6",
         intel: "1f2be193b14ba967c2bcb84d6bcf6fbad23e2876164e28859074feed540bd7b2"

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
