class AsdfMatch < Formula
  desc "asdf-match matches plugin version to desired one"
  homepage "https://github.com/gidoichi/asdf-match"
  url "https://github.com/gidoichi/asdf-match/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "e411600d370bf7cfb638889bb0a3d826c79bb38ca67ac0f5c02714a8b4e4ac1a"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/asdf-match"
  end
end
