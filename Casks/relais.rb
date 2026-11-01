cask "relais" do
  version "0.2.0"
  sha256 "114cc15a7b3411119d0555dfbc1428675dbe92e393c64f35285883e78f7bd8c6"

  url "https://github.com/bvisible/relais/releases/download/v#{version}/Relais-#{version}-universal.dmg"
  name "Relais"
  desc "Claude account switcher for the menu bar"
  homepage "https://bvisible.github.io/relais/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Relais.app"
  binary "#{appdir}/Relais.app/Contents/MacOS/relais"
end
