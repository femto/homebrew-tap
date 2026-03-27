cask "minion-mind" do
  version "0.2.119"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "b9f4762943be0e3baac16f447e66aa5db10611093fa877dea2719e7e532fa81a",
         intel: "88bd73f9848fee3a9c1b88f120d36c36f75f01b744ac63455e44546a0def099a"

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
