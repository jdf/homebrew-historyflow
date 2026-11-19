# Written by .github/workflows/update.yml; edit it there.
class Historyflow < Formula
  desc "See how a document came to be, version by version"
  homepage "https://github.com/jdf/historyflow-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.1.1/historyflow-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "76848018bf3060fbf6e34c93faa7706d0fb39f1af3022bf68168b9b4e74dc5bc"
    end
    on_intel do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.1.1/historyflow-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "601f395c4d06b5296f0c994b75b65e562d85f4023ad93b27ddf7b05fb8ae429b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.1.1/historyflow-0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7a77654bfb82c15da3187a935f9e809f3766113b75ae237d913391a022f1b3cc"
    end
  end

  def install
    bin.install "historyflow"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/historyflow --version")
  end
end
