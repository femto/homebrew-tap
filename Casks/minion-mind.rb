cask "minion-mind" do
  version "0.2.111"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "a0e02a75316c077b28a3c00651cdbca5d12beecff8e2e6b0a1f0e77d97ed5835",
         intel: "aa642047892eddb2d0632309444a4261648feaf56ab2e700839bf86179c77342"

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
