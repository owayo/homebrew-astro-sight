class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.111.tar.gz"
  sha256 "22c3d6163d3640e12c4112b08f32062688164f235f1eb1613939adaefe1e1439"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.111"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "563f512a1abc6025d691d92f795f8c9458094cd074506cf0367d078300427a12"
    sha256 cellar: :any_skip_relocation, sonoma: "4ea7cbe47f765e32a7fa5dd447c7b04310a193f68da2f307f5220770fa8f7063"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "88bbcf7af507073a27bae68ca03ff1f2921228b7455e51c13a5cca537a344a1a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
