# Generated with JReleaser 1.24.0 at 2026-07-15T09:51:30.409025152Z

class Frmtr < Formula
  desc "Java formatter."
  homepage "https://github.com/lanwen/frmtr"
  version "0.2.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/lanwen/frmtr/releases/download/v0.2.0/frmtr-0.2.0-linux-x86_64.zip"
    sha256 "971e425edef279634577f6d0c465b03f6719c8c7e99fa1642221a438590ec4e6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lanwen/frmtr/releases/download/v0.2.0/frmtr-0.2.0-osx-aarch_64.zip"
    sha256 "38a6b7a7569e245915a9df6c1c399ffd5f996466f56409075b72cef2a8faca8e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/frmtr" => "frmtr"
  end

  test do
    output = shell_output("#{bin}/frmtr --version")
    assert_match "0.2.0", output
  end
end
