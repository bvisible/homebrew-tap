cask "relais" do
  version "0.2.1"
  sha256 "b7f782c8feae8756deb20cd6b7dee82093ecfcab00fe0f839dabc2ea0cf0b154"

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
