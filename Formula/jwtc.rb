# Generated with JReleaser 0.10.0 at 2022-01-10T21:31:23.703635395Z
class Jwtc < Formula
  desc "ref-java-jwt -- JWT CLI utility"
  homepage "https://github.com/rrajesh1979/ref-java-jwt"
  version "0.0.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-jwt/releases/download/v0.0.4/jwtc-0.0.4-linux-x86_64.zip"
    sha256 "be24beb190d4d9b046f8461c80997296ef2f6ed6e43cc325279e069eb4b6dab6"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-jwt/releases/download/v0.0.4/jwtc-0.0.4-osx-x86_64.zip"
    sha256 "b6ecee1dd90e1836d1a59baea2200c04b71ef0e04244204a0070c9d6aaa02c37"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jwtc"
  end

  test do
    output = shell_output("#{bin}/jwtc --version")
    assert_match "0.0.4", output
  end
end
