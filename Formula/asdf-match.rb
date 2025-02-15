class AsdfMatch < Formula
  desc "asdf-match matches plugin version to desired one"
  homepage "https://github.com/gidoichi/asdf-match"
  url "https://github.com/gidoichi/asdf-match/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "85380a96827309e356d8c5121a71cdea8d15a0f42a7aad9ccc639594f671e445"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/asdf-match"
  end
end
