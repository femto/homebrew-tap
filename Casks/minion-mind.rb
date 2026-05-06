cask "minion-mind" do
  version "0.2.146"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "1c34c67cfde2ae71e277b15bcfb78a272f870da45b606cb08e00569a31b0b20b",
         intel: "d3405e10a67b9b4367d8154bcbe4ddc4788fc2547308ffb7f173d31eb298cdbc"

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
