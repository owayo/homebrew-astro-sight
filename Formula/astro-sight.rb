class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.110.tar.gz"
  sha256 "9a374150825d1e70b5c3635c6f5f6082d6ccc70a0f5ac1902ecf6752ba3ac4b1"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.110"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7b1707929fc6f1da6d766ba8a93d8302d059af10aa39e33e6c0fb8ddf9c2728a"
    sha256 cellar: :any_skip_relocation, sonoma: "0137bc4971f709f13063ea24d2e986e7334b095feafd44dd2b0d644587712115"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f385be529842ec4e87d87babe9a150096c249aeb91708c166e3484631e39281e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
