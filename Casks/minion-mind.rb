cask "minion-mind" do
  version "0.2.155"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "8ac402a732e002988af1e3c646ae882946575ede05553a7b787bf16caae622ef",
         intel: "e6ad476b1fd7c2a8697e11fac8954bf42aaa8efaeae80e1f49d44ede8308d104"

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
