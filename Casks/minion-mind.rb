cask "minion-mind" do
  version "0.2.84"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "cbd8479c0071ee05729fceaf7478e61634b3b34a12b2f926fecae652cb4df892",
         intel: "905ffa75ef7c4b679b9fe5d22bd392ad63dae054e7997a6ae3243143c6abbfc8"

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
