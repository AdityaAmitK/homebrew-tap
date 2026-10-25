cask "kestrl" do
  version "0.1.2"
  sha256 "4d0c67309b6a38b7c2023468433018b3ad26cef1203e2cc2c63052caa606e0df"

  url "https://github.com/AdityaAmitK/kestrl/releases/download/v#{version}/Kestrl-#{version}.dmg"
  name "Kestrl"
  desc "Local-first workbench for backend development"
  homepage "https://kestrl.adityakinjawadekar.com"

  app "Kestrl.app"

  caveats <<~EOS
    Kestrl is ad-hoc signed and not notarized. On first launch, macOS may block it.
    Open System Settings > Privacy & Security and choose Open Anyway, or remove
    the quarantine attribute yourself with:

      xattr -dr com.apple.quarantine /Applications/Kestrl.app

    Updating Kestrl may prompt again for Keychain access.
  EOS
end
