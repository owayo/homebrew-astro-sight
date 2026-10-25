class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.121/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "345abf2d239f2eda9fb6492a48ee30caa6615c57b9ea10708756f624bcbb5a50"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.121/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "a789a71c60c13f36c769e89ff31d7986c2a9c846ec6babcab940d824a71ac92c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.121/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6b8975df6aa1b74b0da8bad42ced420ef362f7e89b9d4c19b3cc3495aa669fa"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.121/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e94b02dfd029ee3246621d371f23158148eae8924ac1064f43eb3d500b32a421"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
