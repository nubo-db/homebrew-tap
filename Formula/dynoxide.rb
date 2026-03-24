class Dynoxide < Formula
  desc "Lightweight DynamoDB emulator backed by SQLite"
  homepage "https://github.com/nubo-db/dynoxide"
  version "0.9.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.5/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    elsif Hardware::CPU.intel?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.5/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.5/dynoxide-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    elsif Hardware::CPU.intel?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.5/dynoxide-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end
  end

  def install
    bin.install "dynoxide"
  end

  test do
    assert_match "dynoxide", shell_output("#{bin}/dynoxide --version")
  end
end