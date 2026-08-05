class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.8.101.tar.gz"
  sha256 "a139ca3dca3274cb857d292d416b45eb1acbb30028cdc186e3e4983674b669e1"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.8.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c2eb72617ec4fbfe30e22a97268d6889c247bcef7ff12852e087793bbaf3652e"
    sha256 cellar: :any_skip_relocation, sonoma: "d8dc9341311009e75163492cc84548f57e82914af9d7faff7cf9edc6f22ec636"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "359cffce28c69a8b3fc1ef95998faaa462f39587dee7e4973fa2c6f60114e4bf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
