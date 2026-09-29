cask "minion-mind" do
  version "0.2.175"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "42d34b9e47af78697c313f947d69cd36f8bc5ee4ec0c19e2cca7c80bab213339",
         intel: "0a831ac9569fcd269ba896e090b69294a7e609e69d37bf052d3599148b4a7fb2"

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
