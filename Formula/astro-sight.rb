class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.5.108.tar.gz"
  sha256 "4638d3205bd6d01ab951c0ddd92a7347e3a33a8c221bdd17239c50e77ab0d5fd"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.5.108"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8138cdc104d2347124b37dd91ee802517f8ebea778b6bfd24d1b968c39e42979"
    sha256 cellar: :any_skip_relocation, sonoma: "a8d81f9301abae46741746f1cd5531887f64693b3bc624f4223770c7df3dd6c3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "65bf30d389589d3f0034a26ceab6869a9c9e03b273711ad96219b535aa9a557f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
