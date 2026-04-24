class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.9.9"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.9/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "d690964b77c35fc2d6a9991afb86ecd3605c21af803c27972fdcb8531c99cbad"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.9/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "0dd8c5d27e185aaba8f897d594616bee3c813d0be2b5fca991a72123f612232b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.9/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6df476a88a7d3f12a8f5f8cfba8b61485d214573abe426e316c632ad9e358f41"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.9/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f60a3f65bdcfc591c3e9e6c0acee16eca79994a06bfbb897ec5bcbb98b3012a0"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
