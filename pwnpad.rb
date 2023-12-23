class Pwnpad < Formula
  desc "🐳 VMs are bloat. Dockerise your CTF environment."
  homepage "https://hub.docker.com/r/platypew/pwnpad"
  url "https://github.com/pwnpad/pwnpad/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ee3a26ceca0c5498726872efa7d4f7ea3b250a0e4978e6d145d7676c0221beca"
  license "MIT"
  version "1.0.0"

  depends_on "docker" => :optional

  def install
    bin.install "p2"
    zsh_completion.install "_p2-autocomplete.zsh" => "_p2"
  end

  test do
    system "p2 version"
  end
end
