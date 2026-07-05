class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.11.3"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.3/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "2c7d1338720e9572ca18880ad39c55748393ba261645c4bd3c39ae5cfadcafa7"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.3/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "ee57412b163146b6a2dd4ac2324f71b5ca31ed54d0ab748f46cefd164a65a7be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.3/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9260081bf42bcde74c9c3f8cbb67d7a06e5fd82e3b97181d9e64ed1077c119c4"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.3/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea4440a6aa71a0d44104c39f346e9ab24f0178c4ea30b0d4cbff05b66241cf86"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
