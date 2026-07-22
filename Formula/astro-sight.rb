class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.109.tar.gz"
  sha256 "dd707b354e530506c71f7f6aa30679ff5d0a2fa54ed4c4a8a74b5e0b5fdb858b"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.109"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "04ef827782207cd8a6d0cd3d12b1d5fca6b85600c8e6c6c3c1e208bb28a4f4bc"
    sha256 cellar: :any_skip_relocation, sonoma: "97d292920a525bc7b854cadea1ef9b6355f1c3800ccb70ebd6bfa34583c5fd9f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "978beabb4fcbae9eea8d072c250c0b2e1214261d9a1449d084a0fb7f64f2c2f6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
