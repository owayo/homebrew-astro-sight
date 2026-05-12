class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.115.tar.gz"
  sha256 "a62c2f9a76567cbcf815471fdbeb12b4d5ac305e97dca0e214bfb21201fb74a9"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.115"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8fd45b1587acbd9901b61fc0fce0c64016753f786327fe48464f25d321184289"
    sha256 cellar: :any_skip_relocation, sonoma: "c61579fadac5857930e0dc885586cbf5ad928390f8497c40493b1edad52b26b7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6a220b5a18c3294f050be2b0be7a85be6fbb0a791a9ddc383dc066405bc6c4f5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
