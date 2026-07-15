# Generated with JReleaser 1.24.0 at 2026-07-15T20:01:53.4674034Z

class Frmtr < Formula
  desc "Java formatter."
  homepage "https://github.com/lanwen/frmtr"
  version "0.2.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/lanwen/frmtr/releases/download/v0.2.1/frmtr-0.2.1-linux-x86_64.zip"
    sha256 "c0c94f92e9e0bee0e193817f1b59df93ac4a0f2906a584be7dd6579efba6ab69"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lanwen/frmtr/releases/download/v0.2.1/frmtr-0.2.1-osx-aarch_64.zip"
    sha256 "f544d7413de09e2c0889106941298799bb45b4b9bab3163cb441d6bc09b8537a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/frmtr" => "frmtr"
  end

  test do
    output = shell_output("#{bin}/frmtr --version")
    assert_match "0.2.1", output
  end
end
