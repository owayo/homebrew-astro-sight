class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.103.tar.gz"
  sha256 "fc5488c63d02f0187f9069783d0f6645773f6f9625391db24119e4c4e5f36849"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d6e5ec9b99e49292d7e579a580a2623992b830865c35ccd698198a3ec07e8aef"
    sha256 cellar: :any_skip_relocation, sonoma: "67d00d2f051266c65cc80d0478d8134149d570d778ee1947d18527029148e040"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3b9edb816d02015e4d9a06f68b0ad80ac224d8041e124f2174ce4764bbe25d17"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
