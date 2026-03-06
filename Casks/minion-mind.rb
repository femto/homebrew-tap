cask "minion-mind" do
  version "0.2.89"

  arch arm: "arm64", intel: "x64"

  sha256 arm: "5b44f2a64c7f637473ad915a19dc77271c970da944c19231997c833a0b5d9a75",
         intel: "c761e73ee247ba5373fb44506b7f3cc43773f64962e7104b78b65737230c4024"

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
