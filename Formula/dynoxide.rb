class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.9.13"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.13/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "b080624804b21b6fd11b39d83fc1134c71a8555677c8f7252ca1a0e77a30b5b7"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.13/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "3f1e166ab230fc17e8ff08014e59991a45da2a345bc9a9d75ce44ba3274886ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.13/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "097fa296c1f10d5b656eb2f739d7d6486d85d1cf34464fe391253ab2d095d542"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.13/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "344b71ae0c3ab6e1fa2caa8bc557dfcc50b4cbf7ac20b1cc9e286da30a8f13bf"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
