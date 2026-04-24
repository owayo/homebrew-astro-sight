class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.120.tar.gz"
  sha256 "ca504cbc0bab7becc1576fbc2090f2828af70ded318295448d42fe1cdf869aa1"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.120"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7735f13600c42bbf59449a9a80fedcfefd9a7c596a018eab247479b3989d6e36"
    sha256 cellar: :any_skip_relocation, sonoma: "d055e85d9749f081300551499fc7171d58ebe91b860a8d64ceb36fb4507b4966"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f48510229022b3024a5ad1b8dc010bb3f09b00b70d0324c8edc59db1885f17e0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
