# Generated manually as a test
class RustMdbLoad < Formula
  desc "MongoDB Load gen 🦀"
  homepage "https://github.com/rrajesh1979/rust_mdb_load"
  version "0.0.17"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/rust_mdb_load/releases/download/v0.0.17/rust_mdb_load-0.0.17-x86_64-apple-darwin.zip"
    sha256 "82743283172e3d27fc070a986b5e612a1bc074986e710a60345ddce9f6a2bb05"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rust_mdb_load"
  end

  test do
    output = shell_output("#{bin}/rust_mdb_load --version")
    assert_match "0.0.17", output
  end
end
