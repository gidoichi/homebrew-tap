class AsdfMatch < Formula
  desc "asdf-match matches plugin version to desired one"
  homepage "https://github.com/gidoichi/asdf-match"
  url "https://github.com/gidoichi/asdf-match/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "33c10b9bde9e0e2bfbf93d076d7c91860e0017a45ca0fcc319c6619b29f56f62"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/asdf-match"
  end
end
