class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.101.tar.gz"
  sha256 "5358fc1525f35e6b5165b07e05b7b3ee68b91061d07089b69776aba698933cfb"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d564a7a5b7b179d759ccef01cfdde7a7e814c9945fce77874c2aca1faab8eda5"
    sha256 cellar: :any_skip_relocation, sonoma: "2c625f97aea0dff882bebf5b1d67789033115c4eb4a84c18dd377c010b1a42d6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "260840c16a69a7b9ee70c36abe244c5ed723698fc1f3d7be38b3f5a9105a840a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
