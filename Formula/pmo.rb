class Pmo < Formula
  desc "Package Manager Organizer"
  homepage "https://github.com/gidoichi/pmo"
  url "https://github.com/gidoichi/pmo/archive/v0.2.1.tar.gz"
  sha256 "75bffe609367eb3bee9aa16d722b6d09f97507885f6964b99441b66b425e2caa"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pmo"
  end
end
