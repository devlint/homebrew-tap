cask "gitwand" do
  version "3.6.5"
  sha256 "434b7f42d5a32dd461bcbb3079ab6ccb8b14ea9a267e17e13b111fc6d278ecc0"

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
