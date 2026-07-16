class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.106.tar.gz"
  sha256 "2fad1f0cf9f470d22259159f0a0fb6ba9a817e9cd44df07f8629bcecb14ae39f"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.106"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "faf1c42d6b8e9031925afef10aa439158bd94b7d618666d2ef8a15e8080dbbb6"
    sha256 cellar: :any_skip_relocation, sonoma: "2ec502a163473009190e07d19ef7b97e37b76efecf7825cc45ef6ec7048f8102"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1fe7d7d661abfbaa7cd859ff23d0e63dd40f4e26796bd360c504e255d758efaa"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
