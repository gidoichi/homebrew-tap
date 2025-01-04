class YamlPath < Formula
  desc 'Get "xpath" for a given line at column of a YAML file'
  homepage "https://github.com/gidoichi/yaml-path"
  url "https://github.com/gidoichi/yaml-path/archive/refs/tags/v1.4.10.tar.gz"
  sha256 "b89fd8fcae99780266c5033bd9e89b73bfa6e7918ed95485e30d631c43d6f55a"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/gidoichi/yaml-path/presentation/cli.version=v#{version}")
  end
end
