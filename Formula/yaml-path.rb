class YamlPath < Formula
  desc 'Get "xpath" for a given line at column of a YAML file'
  homepage "https://github.com/gidoichi/yaml-path"
  url "https://github.com/gidoichi/yaml-path/archive/refs/tags/v1.4.33.tar.gz"
  sha256 "a8ceb829562ba9e115332ead149bd406de66bdf4dedc6954f17de1061e0fe2aa"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/gidoichi/yaml-path/presentation/cli.version=v#{version}")
  end
end
