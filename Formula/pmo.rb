class Pmo < Formula
  desc "Package Manager Organizer"
  homepage "https://github.com/gidoichi/pmo"
  url "https://github.com/gidoichi/pmo/archive/v0.2.0.tar.gz"
  sha256 "ab6411d52c18af4d8bb5a20226d8464be85e0967b3dd74f7e1939b40fd6ae91e"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pmo"
  end
end
