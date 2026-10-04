cask "minion-mind" do
  version "0.2.179"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "b16d7cddf38fa6cc0efc3077377400a8b492657be925654f3f456dad8c191e81",
         intel: "6ff3471e29bf2364e273f32821942fe0d9e02002fce0d97dea5e33fab8f44729"

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
