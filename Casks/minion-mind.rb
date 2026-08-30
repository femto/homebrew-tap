cask "minion-mind" do
  version "0.2.169"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "116e1ee5640c27b6fc83abdf923e757ebfa96456df42f45ead5334dbbc591fcc",
         intel: "ebfba7caa115796dea2497491772a094eec9652f37a13b66b648a642cf9f1733"

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
