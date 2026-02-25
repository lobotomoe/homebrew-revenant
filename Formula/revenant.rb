class Revenant < Formula
  desc "Electronic document signing with ARX CoSign (SOAP/DSS)"
  homepage "https://github.com/lobotomoe/revenant"
  license "Apache-2.0"
  version "0.2.6"

  url "https://github.com/lobotomoe/revenant/releases/download/v#{version}/revenant-cli-macos-arm64"
  sha256 "ea57d87f44204b0d2810d7c800969cc2eaa06d55eb0095ff681b3eb0e86fb299"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "revenant-cli-macos-arm64" => "revenant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenant --version")
  end
end
