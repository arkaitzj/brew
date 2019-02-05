# Generated by https://github.com/buildkite/cli/blob/master/.github/tap-release.yml

class Bk < Formula
  homepage "https://github.com/buildkite/cli"
  desc "A command line interface for Buildkite."
  url "https://github.com/buildkite/cli/releases/download/v0.2.0/bk-darwin-amd64-0.2.0"
  version "v0.2.0"
  sha256 "fd98d21bce1ae8d47bec7b27337ecfb7f7829f99cd155fb532167b53df5e1816"

  def install
    mv "bk-darwin-amd64-0.2.0", "bk"
    bin.install "bk"
  end

  test do
    assert_match "bk #{version}", shell_output("#{bin}/bk --version 2>&1")
  end
end
