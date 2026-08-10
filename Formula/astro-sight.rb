class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.8.105.tar.gz"
  sha256 "a8010f01e0a19abb1435e0a79ef2522681115a4163eada3fd4a80782d21e8276"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.8.105"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "cc06f5c2450029e7630c932758703438196b5b0550044bf668f641d32019a70d"
    sha256 cellar: :any_skip_relocation, sonoma: "836e21e6d820dc2b32cc0ce5ced76090c1adc1fb76eb3c0f6c80bb567ef7c935"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0479ca90435ad8cb16535349cd9ced51df3c07f6903ecbe11191c1ed774a02f1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
