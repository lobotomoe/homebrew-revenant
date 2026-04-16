class Revenant < Formula
  desc "Electronic document signing with ARX CoSign (SOAP/DSS)"
  homepage "https://github.com/lobotomoe/revenant"
  license "Apache-2.0"
  version "1.2.1"

  url "https://github.com/lobotomoe/revenant/releases/download/v#{version}/revenant-cli-macos-universal"
  sha256 "f90aac1d187de4855e3c08d52f6283e72245a2fa821a7b534209e485be09d07d"

  depends_on :macos

  def install
    bin.install "revenant-cli-macos-universal" => "revenant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenant --version")
  end
end
