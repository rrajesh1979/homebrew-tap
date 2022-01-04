# Generated with JReleaser 0.10.0 at 2022-01-04T00:20:27.081419927Z
class MyCheckSum < Formula
  desc "ref-java-cli -- Reference Java CLI program - Jumpstart Repo Template"
  homepage "https://github.com/rrajesh1979/ref-java-cli"
  version "0.0.5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-cli/releases/download/v0.0.5/MyCheckSum-0.0.5-linux-x86_64.zip"
    sha256 "8bfcc08a7a7adda7fd993e734348b72e098c0c5d20b4e19a0b71c18360e594f8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-cli/releases/download/v0.0.5/MyCheckSum-0.0.5-osx-x86_64.zip"
    sha256 "e50de74f1c012309597a9a1311e1dd43c12514705d4fca40733d1784c6e124b8"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/MyCheckSum"
  end

  test do
    output = shell_output("#{bin}/MyCheckSum --version")
    assert_match "0.0.5", output
  end
end
