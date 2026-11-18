# Written by .github/workflows/update.yml; edit it there.
class Historyflow < Formula
  desc "See how a document came to be, version by version"
  homepage "https://github.com/jdf/historyflow-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.1.0/historyflow-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e8836a7feb22946c2dad21bee5e900c56ce1d7a00a310e5edf8b09179c05860b"
    end
    on_intel do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.1.0/historyflow-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "12878692471fee42d1fd265b13594acb2f9d47768839234f84fd300e36db401f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jdf/historyflow-cli/releases/download/v0.1.0/historyflow-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2054109c266b56900976c3442a82b3c94b0953b3f2762d8b234f7989af9ea5fe"
    end
  end

  def install
    bin.install "historyflow"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/historyflow --version")
  end
end
