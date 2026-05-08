class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.105.tar.gz"
  sha256 "7d9ffb7c568259216661a2fec604d4cb04dcf4662af48cc16f29ee33715612dc"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.105"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "6f9ab8addc826131cf203da407eece96bbf6adc13b0b1b26c6a7488f2af8de95"
    sha256 cellar: :any_skip_relocation, sonoma: "ec983a4e82abd5d5fe59d1c1c365573f9cb7347644ba60a8335c7f8d6cb2561f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cb5bde9146b20d284da0aea9712ebe4463b57d6971a3438194ebb50fcd9e2f5e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
