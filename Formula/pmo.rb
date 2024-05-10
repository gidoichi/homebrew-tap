class Pmo < Formula
  desc "Package Manager Organizer"
  homepage "https://github.com/gidoichi/pmo"
  url "https://github.com/gidoichi/pmo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ed0cf1c72c1b46c2b164dc3de2c35db8a03eb5a2acd8ec5dfc85f21dcd31fdc8"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pmo"
    system libexec/"install.sh"
  end
end
