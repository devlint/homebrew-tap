cask "gitwand" do
  version "3.12.3"
  sha256 "d345ca6be28522bca85dce795e343cd0947ec1ea2e386faf741de69463c6c6ef"

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
