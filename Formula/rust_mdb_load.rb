# Generated manually as a test
class RustMdbLoad < Formula
  desc "MongoDB Load gen 🦀"
  homepage "https://github.com/rrajesh1979/rust_mdb_load"
  version "0.0.16"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/rust_mdb_load/releases/download/v0.0.16/rust_mdb_load-0.0.16-x86_64-apple-darwin.zip"
    sha256 "755e730d7a70d7c00097971cdc706dc17edb4ee28a02e8c3364ffc6bf31a08eb"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rust_mdb_load"
  end

  test do
    output = shell_output("#{bin}/rust_mdb_load --version")
    assert_match "0.0.16", output
  end
end
