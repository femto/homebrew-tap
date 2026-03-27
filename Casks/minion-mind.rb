cask "minion-mind" do
  version "0.2.116"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "8b2391d357bc7d2165db6555ab548d29fef01e551f977a3b6216fb0204347f6f",
         intel: "72677542a1fce3f286d3efd61266dec90d0845a345ccd6fb11459865db919838"

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
