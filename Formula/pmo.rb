class Pmo < Formula
  desc "Package Manager Organizer"
  homepage "https://github.com/gidoichi/pmo"
  url "https://github.com/gidoichi/pmo/archive/v0.3.1.tar.gz"
  sha256 "9ecc755e6f94469ef52fd6a1bca87de91f9e9bbb2c91fb1611d1ce93bb9d9784"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pmo"
  end
end
