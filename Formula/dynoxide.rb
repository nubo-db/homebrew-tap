class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://dynoxide.dev"
  version "0.11.0"
  license any_of: ["MIT", "Apache-2.0"]
  on_macos do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.0/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "e2a429de080f085761df138730811439e23f797d667fbd9592470ec3a459d140"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.0/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "e1e321af10032916399364f40d73edb7fd4287dae1bcb7a11176980b57579b15"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.0/dynoxide-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c7deaeb07ebafa3315cdbed77efe9aa9e02b31445198fb06bb971dbebb1b25b2"
    end
    on_intel do
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.11.0/dynoxide-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f107cb0e65e74e1e198abfd09a93c5c940764be04733bba07b34695d4997398"
    end
  end
  def install
    bin.install "dynoxide"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
