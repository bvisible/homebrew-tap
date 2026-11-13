cask "relais" do
  version "0.3.0"
  sha256 "2300803ec0d1f2f926f67cbcf8becc950118f2656f83af20c40d37cfd64d0a4b"

  url "https://github.com/bvisible/relais/releases/download/v#{version}/Relais-#{version}-universal.dmg"
  name "Relais"
  desc "Claude account switcher for the menu bar"
  homepage "https://bvisible.github.io/relais/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Relais.app"
  binary "#{appdir}/Relais.app/Contents/MacOS/relais"
end
