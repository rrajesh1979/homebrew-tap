# Generated manually as a test
class RustMdbLoad < Formula
  desc "MongoDB Load gen 🦀"
  homepage "https://github.com/rrajesh1979/rust_mdb_load"
  version "0.0.19"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/rust_mdb_load/releases/download/v0.0.19/rust_mdb_load-0.0.19-x86_64-apple-darwin.zip"
    sha256 "320378be986bfdeef12d34a89f77736e3419c5bc51018e8b0087543253a2d908"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rust_mdb_load"
  end

  test do
    output = shell_output("#{bin}/rust_mdb_load --version")
    assert_match "0.0.19", output
  end
end
