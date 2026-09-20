class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "1.2.1"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.2.1/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "e74922a0c278cc527a124b306c74fee264c34743c7bfd85e3efa9bb5bbdcb1ac"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.2.1/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "ba27ee1e612756e6173573daf933f39595138e11b59ff2f15282943bf44f9f2b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.2.1/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e68c87a7b275775c2551f22e77a1b3593c15400b135dd6c3c8fc3e866ee5bce5"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v1.2.1/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a1cc96618811eaf8ffa817ba55aa628c40b87b7d82ded8b5234cd882c63f206c"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_equal "dynoxide #{version}", shell_output("#{bin}/dynoxide --version").strip
  end
end
