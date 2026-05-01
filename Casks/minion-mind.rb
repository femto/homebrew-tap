cask "minion-mind" do
  version "0.2.141"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "3fce31ad59f49d5f5207bd1ce9ce06b1bba000e66f0ebfe80612300f58202eb3",
         intel: "f1c0aec58563fd9c1aa35053c11b48b38e17f4398273db7b16f3106741b294cf"

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
