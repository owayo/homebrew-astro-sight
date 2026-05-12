class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.113.tar.gz"
  sha256 "7bb1cc1f2632606593b3fbad70b0feb5837ae9dc8751377aaae062981c43b212"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.113"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "da07ffa661f5754b98eef21d94b5ca22173c887fc952d67059cd19d1f7d314ca"
    sha256 cellar: :any_skip_relocation, sonoma: "4ce03fcda712b3566935d54bfd2d62e2374f6ac27f3147123b228573f0729158"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ecc3b2b9c065a7609832caa6afb01522f4ef492d154bf86d4b9e3dc3a6ecddad"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
