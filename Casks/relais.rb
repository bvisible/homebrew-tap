cask "relais" do
  version "0.3.2"
  sha256 "b92f87b0ed647ce160caf2c8396c64e6c8de409b281db91f2b0560a48e482a89"

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
