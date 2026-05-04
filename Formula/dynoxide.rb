class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.9.12"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.12/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "aa7240f274c07e09f950e581f4ca3ce2551c5a338eb0e6b63e3632caf46a5c2f"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.12/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "0f35254beec390b3fcb145a3b1e67e3b590d886d958055368c5ac3d149ed08f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.12/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da1a0e8c756d344044fa15e2199a8b29192ca46145e5161e190153a68fc10f4c"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.12/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f3ccd14c86ce5908daa7bab4f681a8f589a6469387dfb23f53dd9d56157fe870"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
