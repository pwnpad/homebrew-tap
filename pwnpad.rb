class Pwnpad < Formula
  desc "🐳 VMs are bloat. Dockerise your CTF environment."
  homepage "https://hub.docker.com/r/platypew/pwnpad"
  url "https://github.com/pwnpad/pwnpad/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "7c2a939d37b65356c241b529bddbd9cbab19aec581b6a49c86e7b088350b1e08"
  license "MIT"
  version "1.0.3"

  depends_on "docker" => :optional

  def install
    bin.install "p2"
    zsh_completion.install "_p2-autocomplete.zsh" => "_p2"
  end

  test do
    system "p2 version"
  end
end
