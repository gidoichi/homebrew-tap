class YamlPath < Formula
  desc 'Get "xpath" for a given line at column of a YAML file'
  homepage "https://github.com/gidoichi/yaml-path"
  url "https://github.com/gidoichi/yaml-path/archive/refs/tags/v1.4.26.tar.gz"
  sha256 "57cb6544d91f4119eb26ea6478f6b12613fb4cef8cbcfd53c54cceee34ffb076"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/gidoichi/yaml-path/presentation/cli.version=v#{version}")
  end
end
