# Generated with JReleaser 1.24.0 at 2026-06-30T19:06:32.942291005Z

class Frmtr < Formula
  desc "Java formatter."
  homepage "https://github.com/lanwen/frmtr"
  version "0.1.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/lanwen/frmtr/releases/download/v0.1.0/frmtr-0.1.0-linux-x86_64.zip"
    sha256 "28c57e88dce273ad5e22d3e2e5075c53e6eb66136edc495eceb2eebe0a43fc32"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lanwen/frmtr/releases/download/v0.1.0/frmtr-0.1.0-osx-aarch_64.zip"
    sha256 "6abeae76df9725efeea61edee956919ac56da96da32da43c93bf6967cb20b794"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/frmtr" => "frmtr"
  end

  test do
    output = shell_output("#{bin}/frmtr --version")
    assert_match "0.1.0", output
  end
end
