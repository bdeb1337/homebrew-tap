cask "steamchat" do
  version "0.2.0"
  sha256 "c682112da6a392898400b97d66ae1fa30ed09383b1be1dcd110d47b0bc8859f0"

  url "https://github.com/bdeb1337/steamchat/releases/download/v#{version}/steamchat-#{version}-universal.dmg"
  name "steamchat"
  desc "Electron-based web wrapper for Steam Chat"
  homepage "https://github.com/bdeb1337/steamchat"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "steamchat.app"

  zap trash: "~/Library/Application Support/steamchat"
end
