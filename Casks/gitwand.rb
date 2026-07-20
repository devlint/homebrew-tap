cask "gitwand" do
  version "3.6.0"
  sha256 "c1510ede7a7480f69f524dacdb5ef1f693198be9f4103f174f93c09b6e4127c4"

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
