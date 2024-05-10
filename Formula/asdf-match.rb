class AsdfMatch < Formula
  desc "asdf-match matches plugin version to desired one"
  homepage "https://github.com/gidoichi/asdf-match"
  url "https://github.com/gidoichi/asdf-match/archive/v1.0.0.tar.gz"
  sha256 "39992c61e0cd059247d30931a35d1ff213315e9d690dcf542a55bdf295657a52"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/asdf-match"
  end
end
