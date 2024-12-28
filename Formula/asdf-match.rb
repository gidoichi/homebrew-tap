class AsdfMatch < Formula
  desc "asdf-match matches plugin version to desired one"
  homepage "https://github.com/gidoichi/asdf-match"
  url "https://github.com/gidoichi/asdf-match/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "91ae879c7ea29bb2c5a1c1ab26f5de48dbeb7bf5d196b76b3a2c05aba55bf9bf"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/asdf-match"
  end
end
