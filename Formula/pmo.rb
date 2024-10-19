class Pmo < Formula
  desc "Package Manager Organizer"
  homepage "https://github.com/gidoichi/pmo"
  url "https://github.com/gidoichi/pmo/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "49843f9a0e55f8f7981d5146298c2ac6b1c6767604da413d2f7d6e0a0760086d"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pmo"
  end
end
