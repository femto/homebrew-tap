cask "minion-mind" do
  version "0.2.95"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "342b4ec7a631591bd07d21efe6ec4c9afe9266963dad24ea7582af48d5581a2d",
         intel: "467ed084c076ec657e34b4288f673de0957edb2e99903abe31d2f06b4df5e303"

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
