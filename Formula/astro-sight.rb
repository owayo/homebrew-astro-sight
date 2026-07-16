class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.107.tar.gz"
  sha256 "3252eafb829031d39f7bb1d1f633522467e8ea41525a99291f05307c6b676bb8"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.107"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "af40348b7b2e55bad51b0df447affb2ff2c4ba2084509c05d4fc83b3a4553aff"
    sha256 cellar: :any_skip_relocation, sonoma: "4907bddd6a938ae2d209f49f59d2f0f39286965193fcd9dd913be96b3f96b4de"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0c04ebf8426975181190647991148bc5190f7483feb6c576f0e0369c9e41b49c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
