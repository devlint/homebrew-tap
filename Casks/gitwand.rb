cask "gitwand" do
  version "3.7.1"
  sha256 "0649b915c9eee9a68fda4e23e309bcdb55f72dae1d20feb35f4e93498cec02f6"

  url "https://github.com/devlint/GitWand/releases/download/v#{version}/GitWand_#{version}_universal.dmg",
      verified: "github.com/devlint/GitWand/"
  name "GitWand"
  desc "Git client with deterministic merge-conflict auto-resolution"
  homepage "https://gitwand.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "GitWand.app"

  zap trash: [
    "~/Library/Application Support/gitwand",
    "~/Library/Caches/com.gitwand.desktop",
    "~/Library/Caches/gitwand-desktop",
    "~/Library/Preferences/com.gitwand.desktop.plist",
    "~/Library/Saved Application State/com.gitwand.desktop.savedState",
    "~/Library/WebKit/com.gitwand.desktop",
    "~/Library/WebKit/gitwand-desktop",
  ]
end
