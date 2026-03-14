cask "minion-mind" do
  version "0.2.96"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "4cbc56a2bcd56b1388caa239a225939ac5a2f8628a170d39c7310d0372b08f80",
         intel: "3527b6721ced7db93290430510836054ad40d2fcec462df08047075324313ced"

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
