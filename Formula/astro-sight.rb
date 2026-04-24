class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.4.119.tar.gz"
  sha256 "b611eae041cf9ad4af69b282d119e98beba48d27eeee92d9e616a5875ad595cd"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.4.119"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f74bd878d92046010243bcac72af0274eb3b2a43796af47ca698cd3918b04f8d"
    sha256 cellar: :any_skip_relocation, sonoma: "634650a201e954b8e63e22b589a605024fad890eaf19502a0f147b14bdb6963e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "47c45e7d0cc0cfefe2e4b2031e904055f2ce16e0246f794e628a180a237536f5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
