cask "minion-mind" do
  version "0.2.83"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "3d2b6a3e16b864cf1637d72691fd5cd9ae75c8fd8ddbca9f6b42e89ddc35e409",
         intel: "bbd0c620f2dfc2462041ed34125af7f20c33566809f37bbde844a5f4a15c1440"

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
