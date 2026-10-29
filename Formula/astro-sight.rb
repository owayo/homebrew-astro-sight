class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.123/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "dda707618b8ba37e213342cef58cd495ccf62a817d1343dde18ba9990df71352"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.123/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "2da71d0710935866c09defe3240ded4394791e66926b85a717e0e618d4c3d4b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.123/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11818e017d8c311d32eac89bf4ae64fc153ce6ef4a4dc6bde17bccd3f04c96d4"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.10.123/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbc49f463c52d2ee4e72821d95f650e35e0ae7df7d3422281b292d25114cbb94"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
