cask "madi" do
  version "0.1.1"
  sha256 "44d22320fe885c7869f73c1166cf528b14086845bf0198b433c746f63cb203cb"

  url "https://github.com/ddiiwoong/madi/releases/download/v#{version}/Madi-#{version}.dmg"
  name "Madi"
  name "마디"
  desc "Markdown editor that edits the rendered document in place"
  homepage "https://github.com/ddiiwoong/madi"

  livecheck do
    url :url
    strategy :github_latest
  end

  # 0.1.1부터 앱이 스스로 새 판을 받아 바꿔 넣는다(마디 ▸ 업데이트 확인…). brew upgrade가 그것과 다투지 않게.
  auto_updates true
  depends_on macos: :sonoma

  app "Madi.app"

  zap trash: [
    "~/Library/Application Support/Madi",
    "~/Library/Preferences/dev.jinwoong.md.plist",
  ]
end
