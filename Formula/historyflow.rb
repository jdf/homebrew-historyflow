# Written by .github/workflows/update.yml; edit it there.
class Historyflow < Formula
  desc "See how a document came to be, version by version"
  homepage "https://github.com/jdf/historyflow-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.2.1/historyflow-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "5e8def7ad90dcd4da72b217da812c9e6859723d1cddfdf09343610bc1dc8c207"
    end
    on_intel do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.2.1/historyflow-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "19987b7b58cfe509b276e6258fd2acf11823dd2832bd26675a74800dc6af479f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.2.1/historyflow-0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd2bf5d5c57b3078f24a2829dcdb75130e3d6f10cb232ef9ad5086649844a515"
    end
  end

  def install
    bin.install "historyflow"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/historyflow --version")
  end
end
