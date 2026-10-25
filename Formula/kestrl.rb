class Kestrl < Formula
  desc "Local-first workbench for backend development"
  homepage "https://kestrl.adityakinjawadekar.com"
  url "https://github.com/AdityaAmitK/kestrl/releases/download/v0.1.0/kestrl-0.1.0-macos-universal.tar.gz"
  sha256 "16de9dcacabd10deaf567cf66373ecc8f8ed7a883060701b175fdc87da170ae7"
  license any_of: ["MIT", "Apache-2.0"]

  def install
    bin.install "kestrl"
    doc.install "README.md", "LICENSE-MIT", "LICENSE-APACHE"
    pkgshare.install "kestrl-bpf.sh"
  end

  test do
    system bin/"kestrl", "--version"
  end
end
