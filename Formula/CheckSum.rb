# Generated with JReleaser 0.10.0 at 2022-01-03T23:50:10.372084225Z
class CheckSum < Formula
  desc "ref-java-cli -- Reference Java CLI program - Jumpstart Repo Template"
  homepage "https://github.com/rrajesh1979/ref-java-cli"
  version "0.0.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-cli/releases/download/v0.0.3/CheckSum-0.0.3-linux-x86_64.zip"
    sha256 "b1ad4f96e56227914e59333fbeb192f222bb8b6e1fa646c0b1fce38df3de35e7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-cli/releases/download/v0.0.3/CheckSum-0.0.3-osx-x86_64.zip"
    sha256 "5c531a8ebd8f9d34f78c06cb3a82ebbaa37862cdc22a98a849feeb7a383782ef"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/CheckSum"
  end

  test do
    output = shell_output("#{bin}/CheckSum --version")
    assert_match "0.0.3", output
  end
end
