cask "relais" do
  version "0.2.2"
  sha256 "ff814a951bdd9c99320f89dc8102bbb028f8dc09cebd943d458bf23930c04428"

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
