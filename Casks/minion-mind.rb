cask "minion-mind" do
  version "0.2.72"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "21f1607e8285fb312f790c29e6796b72c767540a4a271466a68d0cdbc91a7a31",
         intel: "1d80675fb78778673808139115d05e95a8eb84dc43b315c690d17be2104d0603"

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
