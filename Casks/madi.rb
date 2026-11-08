cask "madi" do
  version "0.1.0"
  sha256 "18976e0c63a4d42745981bd504f2ee29d6c6f9c44dfa5fff79e3678cffd40882"

  url "https://github.com/ddiiwoong/madi/releases/download/v#{version}/Madi-#{version}.dmg"
  name "Madi"
  name "마디"
  desc "Markdown editor that edits the rendered document in place"
  homepage "https://github.com/ddiiwoong/madi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Madi.app"

  zap trash: [
    "~/Library/Application Support/Madi",
    "~/Library/Preferences/dev.jinwoong.md.plist",
  ]
end
