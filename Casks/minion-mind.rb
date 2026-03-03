cask "minion-mind" do
  version "0.2.81"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "cecc0310439b1f88550684765e9788e96384825c7978da59e28b49cd18dfdac8",
         intel: "b47c1e29e28292a0568e86514ae9d35f9d7b827be51a23fa6e2846b729c31a9b"

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
