cask "minion-mind" do
  version "0.2.87"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "b7edef3dbd04a80159d627e6977b5c34b4bdd9a5fe22bf51615d34fa2a8abdf5",
         intel: "b1f8bd3e181a108ba9e3234b125f7ab6d722a158b13f0e51124e65963729bff2"

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
