# Generated with JReleaser 0.10.0 at 2022-01-05T02:55:14.466161378Z
class Mychecksum < Formula
  desc "ref-java-cli -- Reference Java CLI program - Jumpstart Repo Template"
  homepage "https://github.com/rrajesh1979/ref-java-cli"
  version "0.0.11"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-cli/releases/download/v0.0.11/mychecksum-0.0.11-linux-x86_64.zip"
    sha256 "245de270c69a9646710c021a6a699f35bddd3bdc011d3c2326dd1df41ad9dd2f"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-cli/releases/download/v0.0.11/mychecksum-0.0.11-osx-x86_64.zip"
    sha256 "caf1921dacbbd64af112f8a96b6532668b26ad3ae1665f1c2a229c43d64108f8"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mychecksum"
  end

  test do
    output = shell_output("#{bin}/mychecksum --version")
    assert_match "0.0.11", output
  end
end
