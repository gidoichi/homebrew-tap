class Pmo < Formula
  desc "Package Manager Organizer"
  homepage "https://github.com/gidoichi/pmo"
  url "https://github.com/gidoichi/pmo/archive/v0.2.2.tar.gz"
  sha256 "15f7b1862ce61e79000e8e63207eaea7535cc4ea05d4bfba92652594856146f6"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pmo"
  end
end
