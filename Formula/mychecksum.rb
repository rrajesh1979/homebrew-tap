# Generated with JReleaser 0.10.0 at 2022-01-05T00:04:38.740941654Z
class Mychecksum < Formula
  desc "ref-java-cli -- Reference Java CLI program - Jumpstart Repo Template"
  homepage "https://github.com/rrajesh1979/ref-java-cli"
  version "0.0.9"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-cli/releases/download/v0.0.9/mychecksum-0.0.9-linux-x86_64.zip"
    sha256 "2a9eae69ff3a090ce82c74b79271f5c128e2001188c0956e2ef8deac91d42916"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-cli/releases/download/v0.0.9/mychecksum-0.0.9-osx-x86_64.zip"
    sha256 "642460fcc942c6047e30fecd8ec890b4722da9d0292222393588e0cd151de0c0"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mychecksum"
  end

  test do
    output = shell_output("#{bin}/mychecksum --version")
    assert_match "0.0.9", output
  end
end
