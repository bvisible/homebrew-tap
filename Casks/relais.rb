cask "relais" do
  version "0.3.1"
  sha256 "37eeb14bcb59bd56c7694d3f015da249b9e18a8e1bf185e39715706b40af3581"

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
