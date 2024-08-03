class YamlPath < Formula
  desc 'Get "xpath" for a given line at column of a YAML file'
  homepage "https://github.com/gidoichi/yaml-path"
  url "https://github.com/gidoichi/yaml-path/archive/refs/tags/v1.4.3.tar.gz"
  sha256 "cbfd51635898c8089a466787215e3781a623f3fa6268769edc401e2aa1d97157"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/gidoichi/yaml-path/presentation/cli.version=v#{version}")
  end
end
