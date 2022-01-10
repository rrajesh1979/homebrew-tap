# Generated with JReleaser 0.10.0 at 2022-01-10T03:23:03.106181582Z
class Jwtc < Formula
  desc "ref-java-jwt -- JWT CLI utility"
  homepage "https://github.com/rrajesh1979/ref-java-jwt"
  version "0.0.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-jwt/releases/download/v0.0.3/jwtc-0.0.3-linux-x86_64.zip"
    sha256 "b3943fb6d147227b13575be720ad2aac2550c935129858b0c648cf8578c721f8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-jwt/releases/download/v0.0.3/jwtc-0.0.3-osx-x86_64.zip"
    sha256 "4897a586f8741dad0a06fdb019a274ae5406c233ba11a8150274f3e062f5c743"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jwtc"
  end

  test do
    output = shell_output("#{bin}/jwtc --version")
    assert_match "0.0.3", output
  end
end
