cask "minion-mind" do
  version "0.2.153"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "065b60b9003f93f78f3d778de410db87de54a4352eacbfc491fd79e43ad430a3",
         intel: "ab01df060c7c3963e32294b54b02889a15e269c8a9a5f3ebec0fc2ec85e3d7d6"

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
