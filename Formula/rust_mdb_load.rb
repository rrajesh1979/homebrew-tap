# Generated manually as a test
class RustMdbLoad < Formula
  desc "MongoDB Load gen"
  homepage "https://github.com/rrajesh1979/rust_mdb_load"
  version "0.0.13"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/rust_mdb_load/releases/download/v0.0.13/rust_mdb_load-0.0.13-x86_64-apple-darwin.zip"
    sha256 "85435645c52651fa129f5db605b1dcbb86342f359d44daf59a720eb6e0c37712"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/rust_mdb_load"
  end

  test do
    output = shell_output("#{bin}/rust_mdb_load --version")
    assert_match "0.0.13", output
  end
end
