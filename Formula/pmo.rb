class Pmo < Formula
  desc "Package Manager Organizer"
  homepage "https://github.com/gidoichi/pmo"
  url "https://github.com/gidoichi/pmo/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "21b4c7af2ba3e68ed5aaab3630ad6bfe91039e2df99367a8b6ff04a997b91799"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pmo"
  end
end
