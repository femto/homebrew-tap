cask "minion-mind" do
  version "0.2.142"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "6a40fd91bc652c8397488b8b4b3cf6cb7723eaf3f3cfaa8e079bdcfc1302d708",
         intel: "1e1ce426f5bb3e3c6fa0ddd1e4b719f6a3d146095268e50d75a6a8fcdc2feaed"

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
