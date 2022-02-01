# Generated manually as a test
class RustMdbLoad < Formula
  desc "MongoDB Load gen 🦀"
  homepage "https://github.com/rrajesh1979/rust_mdb_load"
  version "0.0.14"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/rust_mdb_load/releases/download/v0.0.14/rust_mdb_load-0.0.14-x86_64-apple-darwin.zip"
    sha256 "0b776a3c132f8e3d5b74770211e6647fdc7208d8961a98422f53d138fbb124c7"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rust_mdb_load"
  end

  test do
    output = shell_output("#{bin}/rust_mdb_load --version")
    assert_match "0.0.14", output
  end
end
