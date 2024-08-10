class Pmo < Formula
  desc "Package Manager Organizer"
  homepage "https://github.com/gidoichi/pmo"
  url "https://github.com/gidoichi/pmo/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "60264902b3bd070149dfde60a518dfb662ecc2b1a96b3258bec055e8ef19f7a4"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pmo"
  end
end
