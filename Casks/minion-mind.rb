cask "minion-mind" do
  version "0.2.162"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "05d9566dcd001941804c7ef1e134f578ee0b338eae8a6553bef1bbd535e0b36a",
         intel: "09c6d20e9522751593dd3e5c4b2dda118aca37ab4191dec3866e6d03cfd31af8"

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
