cask "minion-mind" do
  version "0.2.65"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "6f3e79dd826efaa71fff6bb353469ac28d952f4882f489409f5d53db28c03ef1",
         intel: "26e6d58ba800c28b40cca42735905de761dad713cc410ecddfa8047ed741d6ef"

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
