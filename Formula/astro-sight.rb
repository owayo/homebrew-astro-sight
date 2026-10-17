class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.113/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "e1f3fd5a7956fa287766e858ea6798d0257f432c2bf5edc5bd359bbebe48f2d9"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.113/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "9e9af6ed66d27fecce669f6011b1580a56ef2d5b87d9c48e7ab9e6499ad28014"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.113/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86e323433c3ed0025f50fbc7f98112fa980e14f9406c0b3e5015dc04035ddf60"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.113/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90cd8ff43c3a1b46fe5d5df3463b3b1307a136d5488d7524a99d74089bef0f30"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
