class Pmo < Formula
  desc "Package Manager Organizer"
  homepage "https://github.com/gidoichi/pmo"
  url "https://github.com/gidoichi/pmo/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "3565d70d067282b30dff88c751e3659c8b5542a1a7c3cfd1040732cfe32c9b59"
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
      FileUtils.ln_s(opt_prefix/"libexec/managers", "#{config}/managers")
    end
  end
end
