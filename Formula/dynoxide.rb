# Homebrew formula for Dynoxide
# Place this in a tap repo (e.g., nubo-db/homebrew-tap) as Formula/dynoxide.rb
# Install with: brew install nubo-db/tap/dynoxide
#
# NOTE: sha256 values are "PLACEHOLDER" in this template. They are replaced
# automatically by the release CI workflow (.github/workflows/homebrew.yml)
# when a new version is published. Do not fill them in manually.

class Dynoxide < Formula
  desc "Fast, lightweight drop-in replacement for DynamoDB Local, backed by SQLite"
  homepage "https://github.com/nubo-db/dynoxide"
  version "0.9.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      sha256 "e6fe02e364b70faae5b1853e65bc6cfb67efa02d81a3d82dd2a1cab6d14c3e82"
    end

    on_intel do
      sha256 "5e5d79d17405e59a37d6f48ff02b969e39d601e28f0d6663fe9417fc96a1ee39"
    end
  end

  on_linux do
    on_arm do
      sha256 "75ef3d5c02c3bb65a4f745beed6df8337a378f3677bf506965456d58901b0ee4"
    end

    on_intel do
      sha256 "ed58e67b605168d59ac4bdbf322f729fb92992af3c8c2a750301b4299e2e560b"
    end
  end

  def install
    bin.install "dynoxide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dynoxide --version")
  end
end
