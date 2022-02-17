# Generated manually as a test
class RustMdbLoad < Formula
  desc "MongoDB Load gen 🦀"
  homepage "https://github.com/rrajesh1979/rust_mdb_load"
  version "0.0.21"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/rust_mdb_load/releases/download/v0.0.21/rust_mdb_load-0.0.21-x86_64-apple-darwin.zip"
    sha256 "352b9aabd04948abeed6f0582d0ccfbaea7ac14f63dfcb1c84e9c7104743d481"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rust_mdb_load"
  end

  test do
    output = shell_output("#{bin}/rust_mdb_load --version")
    assert_match "0.0.21", output
  end
end
