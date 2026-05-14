class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.118.tar.gz"
  sha256 "7afebfbe29372cc32376f4ab33559eaf3fa47f82ae5b3da67debe618aef8f42b"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.118"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ab090f2ed2b8ea6afe082e93a5dc32acf9f95ef7df958b113a1ff3e867f162b1"
    sha256 cellar: :any_skip_relocation, sonoma: "4f00f2d85b638ad61b496e5d02088853ef1b169d5f98ae8407b5e4f94d6f1ff5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f664652e7d1c040cad7939adc49ede58642256d78a9f31538851f782e7c7e405"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
