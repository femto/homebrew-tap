cask "minion-mind" do
  version "0.2.105"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "cffe991ff5ea8a33be1d979293982d60548d643aba29e98860bd88614f57a124",
         intel: "b728ff66c53fac28b7cf1c06d3211cbe04fa890bf2587fb6226feb401183fee6"

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
