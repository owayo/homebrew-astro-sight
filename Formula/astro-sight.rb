class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.104.tar.gz"
  sha256 "6e223df712dce6f5ee4b6a220fda6b9225b410b26acccccbf9484a059e3b8042"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.104"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5d5dac25a3b976eabce860c51c0c0cf9a70ef95dde93a31531f66bcb8a1fc73b"
    sha256 cellar: :any_skip_relocation, sonoma: "77df377886796156b46f42698c9f32f5fd8b936675e798fcb53957e6b39b5be6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9471f1a0a0c829c1c0ae50f435f1665587a7ebacdde335f98148480383bb2314"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
