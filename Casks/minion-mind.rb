cask "minion-mind" do
  version "0.2.161"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "a5a3c4bc24bc597aa650c5990721c3a1e476302fcea2de15cd3bccbb63025b15",
         intel: "ddeef0728972417e49595712bc2c93d6ef3be7ed85a62bed3d4991a198de997c"

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
