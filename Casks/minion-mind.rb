cask "minion-mind" do
  version "0.2.101"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "464e6d3697835781fa13b0c3be5302f5c1a7610102e24db6fb0ac26c774b300e",
         intel: "78204a03a95e945cb5f7526f1ce71b3b02805d2a5b697a8138aa3ce57f48f2e0"

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
