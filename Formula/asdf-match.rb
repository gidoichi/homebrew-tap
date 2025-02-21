class AsdfMatch < Formula
  desc "asdf-match matches plugin version to desired one"
  homepage "https://github.com/gidoichi/asdf-match"
  url "https://github.com/gidoichi/asdf-match/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "a96519c14fe956b1d3a589683fe566b1f47c942744f299a789cbd21e36b11f57"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/asdf-match"
  end
end
