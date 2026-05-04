class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.9.11"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.11/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "b546aace7febc70a42381eccda6fd1cbc0ec2bb021f90c3b53aec7b40225f72f"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.11/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "ec4d3069b3509cc4ea1ffaa2aa6fd2c666b28068647704bbea04ca7ef92fd984"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.11/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e93ce1d8056fffc97d65c1704673f96dcd807405a794cb74047200aed5ee475f"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.11/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b7ee10b75544954da814af73977794c927d6965a66f972bb32b941d3a313109e"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
