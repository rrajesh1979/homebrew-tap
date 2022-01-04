# Generated with JReleaser 0.10.0 at 2022-01-04T00:33:10.665974704Z
class Mychecksum < Formula
  desc "ref-java-cli -- Reference Java CLI program - Jumpstart Repo Template"
  homepage "https://github.com/rrajesh1979/ref-java-cli"
  version "0.0.7"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-cli/releases/download/v0.0.7/mychecksum-0.0.7-linux-x86_64.zip"
    sha256 "2d5e71470fb4899ee9e67404e588412a47117f000b7eaf9a025d1ff8b08a8479"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/ref-java-cli/releases/download/v0.0.7/mychecksum-0.0.7-osx-x86_64.zip"
    sha256 "49d00faf2f1bbfd1452d6d2eff384ea3950d051d10c9a00aa5ddc5fcd34f553b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/mychecksum"
  end

  test do
    output = shell_output("#{bin}/mychecksum --version")
    assert_match "0.0.7", output
  end
end
