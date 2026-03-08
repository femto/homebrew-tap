cask "minion-mind" do
  version "0.2.92"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "847867f7bda4e8d12c4b5c1fb0d10f931f9a63efadc88deb9eb7397f2394fa46",
         intel: "6b4e87103dc88a2cd66bc6004594816f839b9428f60e9b74ac7d0787d2fececf"

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
