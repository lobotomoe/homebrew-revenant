class Revenant < Formula
  desc "Electronic document signing with ARX CoSign (SOAP/DSS)"
  homepage "https://github.com/lobotomoe/revenant"
  license "Apache-2.0"
  version "1.2.1"

  url "https://github.com/lobotomoe/revenant/releases/download/v#{version}/revenant-cli-macos-universal"
  sha256 "04a48b1908126bb03ab99d48eee2a0a9e4aa98fa7f5ee4e48169aa1071c54890"

  depends_on :macos

  def install
    bin.install "revenant-cli-macos-universal" => "revenant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenant --version")
  end
end
