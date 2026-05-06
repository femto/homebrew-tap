cask "minion-mind" do
  version "0.2.143"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "30f6a7b97acfdf663a57df6209cc6abc1d0e872ec589d02625038184cc99f0e9",
         intel: "012f550c4e6e4c0966e2490e2ed8f670f92b1b775a22a5491bf6564ba2ef5634"

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
