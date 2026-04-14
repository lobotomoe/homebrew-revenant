class Revenant < Formula
  desc "Electronic document signing with ARX CoSign (SOAP/DSS)"
  homepage "https://github.com/lobotomoe/revenant"
  license "Apache-2.0"
  version "1.2.0"

  url "https://github.com/lobotomoe/revenant/releases/download/v#{version}/revenant-cli-macos-universal"
  sha256 "f93eb8288eb86a08b4a64764fc4cf659c9712304913cbdf16dcdd317842db720"

  depends_on :macos

  def install
    bin.install "revenant-cli-macos-universal" => "revenant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenant --version")
  end
end
