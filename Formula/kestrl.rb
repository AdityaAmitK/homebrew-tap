class Kestrl < Formula
  desc "Local-first workbench for backend development"
  homepage "https://kestrl.adityakinjawadekar.com"
  url "https://github.com/AdityaAmitK/kestrl/releases/download/v0.1.2/kestrl-0.1.2-macos-universal.tar.gz"
  sha256 "cd49bb1299fbcd5442d8be3788cbc4e1990de9377fc7a56d0caa2804f8234656"
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
