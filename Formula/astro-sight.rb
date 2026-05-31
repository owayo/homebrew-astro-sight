class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.129.tar.gz"
  sha256 "d3af522bdbf46ac10a19f0c0b9495db02774e5314eea1f8a469c5d3406a9fc62"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.129"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "9d04fddaf716d7f927154d56b8abe5ec1d0651daebf714caccbd7581da7efa49"
    sha256 cellar: :any_skip_relocation, sonoma: "70da6a13f191a3b506c1c993770152bf85926692530fb0c8361944e80f6ac1e0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "33d30f3afdc0f3bec8835c19d0bec5317dcf4ec783dd3fd862a707603c1d62b1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
