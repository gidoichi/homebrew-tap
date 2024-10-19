class Pmo < Formula
  desc "Package Manager Organizer"
  homepage "https://github.com/gidoichi/pmo"
  url "https://github.com/gidoichi/pmo/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "21b4c7af2ba3e68ed5aaab3630ad6bfe91039e2df99367a8b6ff04a997b91799"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pmo"

    ohai "To create a configuration directory to persist your data, run `brew postinstall #{name}`"
  end

  def post_install
    if ENV.include?("XDG_CONFIG_HOME")
      config = "#{ENV["XDG_CONFIG_HOME"]}/pmo-gidoichi"
    else
      config = "#{ENV["HOME"]}/.config/pmo-gidoichi"
    end

    if Dir.exist?(config)
      ohai "The configuration directory already exists. Run `rm -rf #{config}/*` to install cleanly."
    end

    FileUtils.mkdir_p("#{config}/config")
    unless Dir.exist?(libexec/"config")
      FileUtils.ln_s("#{config}/config", libexec/"config")
    end
    unless Dir.exist?("#{config}/managers")
      FileUtils.ln_s(libexec/"managers", "#{config}/managers")
    end
  end
end
