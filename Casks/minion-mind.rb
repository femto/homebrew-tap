cask "minion-mind" do
  version "0.2.70"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "8188e2ce337f40819b328e8041614c3dea65345db5507bf973405768f406eaac",
         intel: "4f19ac8197aa8ba5fdceab10265f199234235c6d92b8683a321e979adba635bf"

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
