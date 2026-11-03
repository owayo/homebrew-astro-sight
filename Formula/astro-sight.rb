class AstroSight < Formula
  desc "AST information generator CLI for AI agents"
  homepage "https://github.com/owayo/astro-sight"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.100/astro-sight-aarch64-apple-darwin.tar.gz"
      sha256 "6d0580680b6af10275bcdadddc4696ba70ba1f13e1e72da4c758addf1773eb8a"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.100/astro-sight-x86_64-apple-darwin.tar.gz"
      sha256 "52d14f691b026e453a2fa78f53014e211bbd76539416103085017885e52161af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.100/astro-sight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdfde6346beb25184b617501688eb956f8d5f4eb43329aea207911848c7e59fa"
    else
      url "https://github.com/owayo/astro-sight/releases/download/v26.11.100/astro-sight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d20c1f80a8e5a6835adf89e8abc362567b433952cae14a6ca0495d872af1ec7"
    end
  end

  def install
    bin.install "astro-sight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astro-sight --version")
  end
end
