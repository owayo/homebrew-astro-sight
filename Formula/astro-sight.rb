class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.6.108.tar.gz"
  sha256 "514f8c00f5edbc18447d02c20abb374d6022a037cc1270e6074b35d8ea4c924e"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.6.108"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "6c953ebd48c58b0209f5c66e670c8a37329dbeae4df2062117cc113adc485a75"
    sha256 cellar: :any_skip_relocation, sonoma: "899e8f197773c6a6b1e1f459fa7842b5cf32e18ce543696606cb0dc4a2355741"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bbdf573ae17d4aa108a3ecdd823dff147b164d4a3faffd95f7c8f83948de22a5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
