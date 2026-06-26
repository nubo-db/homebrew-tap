class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.11.1"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.1/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "953f37b24d01040e4a2400942748ed49445963ae0250447c993b561af50fd055"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.1/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "eaa9dccabf0390e70ad6b40bf35170459e760177f983db18899b60fec1ac8c0b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.1/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4baaa2ef0be2bb83c45e2b76852f76bb9ef9a8fc6f1d6544debbd72ecb759c86"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.1/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "486c03f404850ae05f45c705c5cdfade21a47115b562009e2737249415bb3f3f"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
