cask "kestrl" do
  version "0.1.0"
  sha256 "7aef2b80f29586a6fee3fb1151a1f4dca14b93e521dfa709d8a846cecbd0ec0f"

  url "https://github.com/AdityaAmitK/kestrl/releases/download/v#{version}/Kestrl-#{version}.dmg"
  name "Kestrl"
  desc "Local-first workbench for backend development"
  homepage "https://kestrl.adityakinjawadekar.com"

  depends_on arch: :arm64

  app "Kestrl.app"

  caveats <<~EOS
    Kestrl is ad-hoc signed and not notarized. On first launch, macOS may block it.
    Open System Settings > Privacy & Security and choose Open Anyway, or remove
    the quarantine attribute yourself with:

      xattr -dr com.apple.quarantine /Applications/Kestrl.app

    Updating Kestrl may prompt again for Keychain access.
  EOS
end
