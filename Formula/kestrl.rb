class Kestrl < Formula
  desc "Local-first workbench for backend development"
  homepage "https://kestrl.adityakinjawadekar.com"
  url "https://github.com/AdityaAmitK/kestrl/releases/download/v0.1.1/kestrl-0.1.1-macos-universal.tar.gz"
  sha256 "8de9ce9f09ff02fec6177bfcc5cf28a041ebf359757d9d753facff6c501963e7"
  license "MIT"

  def install
    bin.install "kestrl"
    doc.install "README.md", "LICENSE"
    pkgshare.install "kestrl-bpf.sh"
  end

  test do
    system bin/"kestrl", "--version"
  end
end
