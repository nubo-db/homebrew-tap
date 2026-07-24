class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.12.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.12.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "1c46987caceaf07a12b676c6a384f8b4c83107974a1849ec35a3f8ee5f8ee4c4"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.12.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "8b6523d89af01cb6a5f6a7ff7796e788651dbf82b75a81f42d5f8c166b7b60d9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.12.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "486939fbf079bfe41b55bc39519e2867d7ead193be1ddedcb7e845945a81b5f4"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.12.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b593b62341774eed0d300bfe3067d414746051f6395f1512e5ff2f63962fc61f"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
