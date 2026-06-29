cask "minion-mind" do
  version "0.2.157"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "0b4890a0994d91fa49c5d86091f025c7aa65180b1c427baaca8fd813cded4e96",
         intel: "227a8a7db373773f709617747f17333f320bbd56d2d91816aac6d09c7da78242"

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
