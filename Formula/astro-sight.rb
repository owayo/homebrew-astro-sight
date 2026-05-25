class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.125.tar.gz"
  sha256 "45853565a529a4e650b3912433308cf2055e7d2807f7538ac98928ea0db11d42"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.125"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c7d2f02391aeca3c84b5bd72c91eefdd535fd5970406e6bfe7043efc11e7c4b4"
    sha256 cellar: :any_skip_relocation, sonoma: "3e0417e9b459b9cfb443be84a03d3789def5d26ba2c1d12beb4d67e460277c59"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6b59933853ec0bdc7a07b919336d92c8fe919665f2a833909042795038a30a5f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
