cask "minion-mind" do
  version "0.2.123"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "418c38d3c2d212008f72d231c3d279a6a1f44956990aa142bc14661449237b60",
         intel: "392c34d2d69ff00e26eadd644e5d83dbdcc3ec997f85b76cc67c1f9f875fa3f5"

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
