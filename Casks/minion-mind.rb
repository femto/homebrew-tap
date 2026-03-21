cask "minion-mind" do
  version "0.2.99"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "62505fc384229c4cfe922a1d75defc49a7bab576959d3e5b7f6a04755a2e43b5",
         intel: "e3139023fe8387cdf340e44b8882276d8af7ded2357e2082ae6da446d6530f52"

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
