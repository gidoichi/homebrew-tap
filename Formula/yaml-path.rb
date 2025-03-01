class YamlPath < Formula
  desc 'Get "xpath" for a given line at column of a YAML file'
  homepage "https://github.com/gidoichi/yaml-path"
  url "https://github.com/gidoichi/yaml-path/archive/refs/tags/v1.4.13.tar.gz"
  sha256 "a01706739478631a4e08aeef6e7db042cb4306adabf08c0173a07b7ba7b648f9"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/gidoichi/yaml-path/presentation/cli.version=v#{version}")
  end
end
