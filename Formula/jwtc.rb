# Generated with JReleaser 0.10.0 at 2022-01-11T02:40:32.47200303Z
class Jwtc < Formula
  desc "ref-java-jwt -- JWT CLI utility"
  homepage "https://github.com/rrajesh1979/ref-java-jwt"
  version "0.0.5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-jwt/releases/download/v0.0.5/jwtc-0.0.5-linux-x86_64.zip"
    sha256 "1792daeaf8ce829a452cc338136f22b0175686a761b1c8801565cd0aa5c824da"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-jwt/releases/download/v0.0.5/jwtc-0.0.5-osx-x86_64.zip"
    sha256 "4cd90a9d321499847cf5703c4bbc0cad7a364035ac0f98d4f7105746c0e926c5"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jwtc"
  end

  test do
    output = shell_output("#{bin}/jwtc --version")
    assert_match "0.0.5", output
  end
end
