class Dynoxide < Formula
  desc "Lightweight DynamoDB emulator backed by SQLite"
  homepage "https://github.com/nubo-db/dynoxide"
  version "0.9.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.5/dynoxide-aarch64-apple-darwin.tar.gz"
      sha256 "sha256:16a02ef68335696b31a62eeab8d914a78f55167a4f4800b41d9f57b0de14d3fc"
    elsif Hardware::CPU.intel?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.5/dynoxide-x86_64-apple-darwin.tar.gz"
      sha256 "sha256:6d3768e5d9f38ed478815e80bcb38fce24e3093c7e56e3bfc4852d3b9fc23695"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.5/dynoxide-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "sha256:cbdfa9f45e8fc1bd863a2b1b8b1b1ca0a46a0139c67b6d3eff8fd8d0b446e673"
    elsif Hardware::CPU.intel?
      url "https://github.com/nubo-db/dynoxide/releases/download/v0.9.5/dynoxide-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "sha256:608d56df15b72aec8e67b156370e194fedc5a762226a1e2d74265faeca4fdcd3"
    end
  end

  def install
    bin.install "dynoxide"
  end

  test do
    assert_match "dynoxide", shell_output("#{bin}/dynoxide --version")
  end
end