class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.9.10"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.10/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "e03b657c0e819d7b6652523f25ae6d2f5cad495c9ca404bbce84d08976788359"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.10/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "fb1d9b3ef8a96dc7561c2e353868523eb929f77996f69df90be0d914eba2b036"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.10/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "734e153096f09e63cceddcf97cf37d8b500c852ebade623324d349d008d3b1eb"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.10/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3933386c40edb5c9841fb1111e3f8887b13e17c28a3e8213f07d72a8b3fce9bc"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
