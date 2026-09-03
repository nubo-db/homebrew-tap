class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "1.1.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.1.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "5c834bf13d69c1a02e4ffb902a0bda0503ffa475cede35b0703f00b663bf7329"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.1.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "204216e98550ddc0d13de00c9d52c3bb928ba9fd69944e3d891fbe3e94181820"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.1.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86f7e4bf7ac83ec42e468f83bb759b1c66cfc3577bc29253f2521257a2c93c21"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.1.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f18ba25baae62de5e33e0f285f59de855e47b031dacf8e8274fc8c5c6136389"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
