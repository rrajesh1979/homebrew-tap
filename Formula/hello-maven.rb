# Generated with JReleaser 0.10.0 at 2022-01-03T02:18:18.474740239Z
class HelloMaven < Formula
  desc "hello-maven -- Hello World - Jumpstart Repo Template"
  homepage "https://github.com/rrajesh1979/hello-maven"
  version "0.0.23"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/hello-maven/releases/download/v0.0.23/hello-maven-0.0.23-linux-x86_64.zip"
    sha256 "9601cce0a51e9f0958b69f660ff2945fd5ad1765974428a4378d7f35fe224ce1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rrajesh1979/hello-maven/releases/download/v0.0.23/hello-maven-0.0.23-osx-x86_64.zip"
    sha256 "33db61ae8524b9dce525f602ecc3105c2d9f4cda397ddbf1eff8ba498f2d135a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/hello-maven"
  end

  test do
    output = shell_output("#{bin}/hello-maven --version")
    assert_match "0.0.23", output
  end
end
