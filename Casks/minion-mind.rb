cask "minion-mind" do
  version "0.2.130"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "03ac49caf19cf560a238bc03935e7b70d809097190907e681481cbbe2c67f9ae",
         intel: "bd830412d77c5c0d6753f10e57ef418a993e62acf96ed0176ec186624cc32dd7"

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
