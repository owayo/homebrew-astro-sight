class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.109.tar.gz"
  sha256 "55f837203a0622eac258d21b28143684fa2e8949194c454bf30dc3daa9361ed2"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.109"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "bba8c3029975178d21b5a3340991eb5da55a994a87564d2cd56084d4966cc072"
    sha256 cellar: :any_skip_relocation, sonoma: "10bc912b44193bc042b181fe18c1b2afd3c5747fab806053e510ba97648552b5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8a40dcd1b1c5193e747307cfe7c3356de762adb7890dcccef9adf459372eff5f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
