class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "1.4.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.4.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "29240e929f2f14d56eb975d00445e41ef8988c48596effaec9638427871e5ab0"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.4.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "ee6d36f861a0dfdae7a1c5b4418acddafc4399791e5e320a306ec86402128fd0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.4.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e94a67e0578209f992f78aeef1e85797b662415d73c154264864f3b9cdab5760"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.4.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8079c824dfbf9e1514c90ef604d82d9a5a226a5e8873302c4ff0845ae84158f3"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_equal "dynoxide #{version}", shell_output("#{bin}/dynoxide --version").strip
  end
end
