class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.109.tar.gz"
  sha256 "7290978c1a3381f15a2dd2256aa43eb1c0a1c479a7a88e304af3ee078f952d38"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.109"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c8cad26fa03017373ca7ae5fee07eba205adab6414547223dc4ad315b2155896"
    sha256 cellar: :any_skip_relocation, sonoma: "8693811c03f39c06f28a36a31b5028ea1b46d03c25d4fd0babd7bc10af836cb7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "185569909f4550f465c3ea53765c6f0af1faf1d1bb6bc858d29f971f7a62e649"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
