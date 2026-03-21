cask "minion-mind" do
  version "0.2.98"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "d8a8d737504dee6b4c083d56d8f1b615d1c106b33732f44e3ee8628c7ee63430",
         intel: "77f74e63f367d3073b0fd6a5f96910ec709a173df90667aabf9171c224caa760"

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
