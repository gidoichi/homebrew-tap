class Pmo < Formula
  desc "Package Manager Organizer"
  homepage "https://github.com/gidoichi/pmo"
  url "https://github.com/gidoichi/pmo/archive/v0.3.2.tar.gz"
  sha256 "cc26257f17eb3bab20a0baf6f8f187899863a8254fdf07f16f5f58f8ced32fdf"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pmo"
  end
end
