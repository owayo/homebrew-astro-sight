class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  url "https://github.com/owayo/astro-sight/archive/refs/tags/v26.7.102.tar.gz"
  sha256 "a37eddd243a5602cada8aa5cc31528f343511769be90694f10e557fc67fc09a4"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/astro-sight/releases/download/v26.7.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8e348004e8bd6a2f7397f001cf8ec10f63f1f7fe32577a33570f6f98a5620912"
    sha256 cellar: :any_skip_relocation, sonoma: "e91c011642aeaffa8157ce8f3a3baa4fb8c9f385c8f33dac7ec14bc49dd7e4ac"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "27bc7d61f271da2b3fdfa83f4d561df080238fe6bfa7b45f487a0d3a7c8e8dac"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/astro-sight", "--version"
  end
end
