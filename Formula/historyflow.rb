# Written by .github/workflows/update.yml; edit it there.
class Historyflow < Formula
  desc "See how a document came to be, version by version"
  homepage "https://github.com/jdf/historyflow-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.2.0/historyflow-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "aee387bd969ca1351c9d206aee1b405c3898e2189e3aa142ca09e1cf2932c190"
    end
    on_intel do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.2.0/historyflow-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a8d8797a13b387871fa60a28c88d13260018521e3388a2eebe6bb62071c67050"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.2.0/historyflow-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba7d4944b0ea50916cb968c53b9d6c0218c77f04ff9f69e2c9233c0e74cc1463"
    end
  end

  def install
    bin.install "historyflow"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/historyflow --version")
  end
end
