class Revenant < Formula
  desc "Electronic document signing with ARX CoSign (SOAP/DSS)"
  homepage "https://github.com/lobotomoe/revenant"
  license "Apache-2.0"
  version "1.0.0"

  url "https://github.com/lobotomoe/revenant/releases/download/v#{version}/revenant-cli-macos-arm64"
  sha256 "bf57eba8ea48b8f7f5968dd6fbeaeae53e6ae9f12e7b2bcd85db91783892a004"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "revenant-cli-macos-arm64" => "revenant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenant --version")
  end
end
