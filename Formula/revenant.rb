class Revenant < Formula
  desc "Electronic document signing with ARX CoSign (SOAP/DSS)"
  homepage "https://github.com/lobotomoe/revenant"
  license "Apache-2.0"
  version "4.1.2"

  url "https://github.com/lobotomoe/revenant/releases/download/v#{version}/revenant-cli-macos-universal"
  sha256 "af1b4b4b55d1abe1cabcb87cb2fe5ff8324086ca9c29ebd61d5c451ef4fe6ac8"

  depends_on :macos

  def install
    bin.install "revenant-cli-macos-universal" => "revenant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenant --version")
  end
end
