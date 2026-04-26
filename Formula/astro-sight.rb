class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.122.tar.gz"
  sha256 "033a5bb26091effdd4a2c65244798ab07a91b2c43c406f7ba7d8dc6969a56d14"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.122"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "b3a2c084da111f0786da074e7cd3a56477e4fd7384c4b547ec43e035ff8e7c31"
    sha256 cellar: :any_skip_relocation, sonoma: "465827a0dab4fa00ee37fa82d28d47c6f64e79ca8a27239e5c3bf77be5154773"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bc6f05624105b1daf4486916fb700f75302f7ab4e40207da9943724bcbbf489e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
