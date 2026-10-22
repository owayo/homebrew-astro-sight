class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.116/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "d86d5b119aa147cd847a4a29dfff4b1f3e8f922b97e7268c34360945fca1cadf"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.116/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "ccda2f45790caa3e1c064ac4b75eac7eaa20bed958c19da07dc1f302d73ca94f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.116/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dadc673f8caff3ffa2f67719dfd9175445c921283fa10a3bf73c3e4fe0163ed6"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.116/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09bc0966109f0c84282cf3e9b7905fcc23d9f65598712b3e3afe918ca0fadbd0"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
