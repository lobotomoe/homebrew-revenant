class Revenant < Formula
  desc "Electronic document signing with ARX CoSign (SOAP/DSS)"
  homepage "https://github.com/lobotomoe/revenant"
  license "Apache-2.0"
  version "1.0.0"

  url "https://github.com/lobotomoe/revenant/releases/download/v#{version}/revenant-cli-macos-arm64"
  sha256 "28fb516c226545c3a19a2ad6dc7ea39d27d71e731f9452c11d027e276cc454fa"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "revenant-cli-macos-arm64" => "revenant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenant --version")
  end
end
