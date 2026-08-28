class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.8.110.tar.gz"
  sha256 "06ae7eba9c172fcb49172a1c64fc50ed2bafa218450d910bd68abd759219927a"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.8.110"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "61bee8fb8a14377a240bbb0e7f767f45c9a5bce313855e741f0d557e7a1e48c6"
    sha256 cellar: :any_skip_relocation, sonoma: "31dbb60aea95f6499269f14c4aa9675a53202f0be792092e1622423cf5bbb268"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "aaeedf03e04e3c06aa824f159d0114b97ca7fe19864ba2e8ae60773eddcb2912"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
