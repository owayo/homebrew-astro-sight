class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.117/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "8af924fb38bcfcf691f8317b76b03ec28565c6035c907f6dae5854375e20855e"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.117/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "cbf9db94f12c704bc34ab6714602694de819d247ca981d45c717efd32f01f3ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.117/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7bbf9ec2afbdd9cfea7b0eb6934a380210c2011ee3e08ffa553801e621c7d91a"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.117/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8944a963d3d87a784c0c21c572b0f4ad7466458bbbd10d547f0c3e526741566e"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
