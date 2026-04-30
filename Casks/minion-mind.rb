cask "minion-mind" do
  version "0.2.135"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "923cc6238b5529c05a33bfe934a04f30345a1daa2198c0df127d78cb3943a826",
         intel: "9ffd7f01d6d76e020dd2ae698eec967c4f4fa27446ef164507dafa8abf5b2da2"

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
