class Revenant < Formula
  desc "Electronic document signing with ARX CoSign (SOAP/DSS)"
  homepage "https://github.com/lobotomoe/revenant"
  license "Apache-2.0"
  version "2.0.0"

  url "https://github.com/lobotomoe/revenant/releases/download/v#{version}/revenant-cli-macos-universal"
  sha256 "6de337e69f3b1adda72d0451acb44ce338d08ddd2d6cc5cd9bf730e26ecc5a1e"

  depends_on :macos

  def install
    bin.install "revenant-cli-macos-universal" => "revenant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenant --version")
  end
end
