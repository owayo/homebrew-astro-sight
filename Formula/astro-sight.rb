class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.100.tar.gz"
  sha256 "82f42e678a99a6959415048abac7966bc552c7d0cdccb34b04b6390450fe4f95"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c049dd13beda834aa8900431b38e91a7fb9c6f0ccdcf86417d567f0c47e8c181"
    sha256 cellar: :any_skip_relocation, sonoma: "f67342ac44d2e7bd6c45f774e021405636056bcf1861ea63aeacfbd16b9e6c59"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3c7f2c868185e0a02398f3a0b72fbaf0c36a7a9c0585194eddf80d0576dd82c8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
