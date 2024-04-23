class Pwnpad < Formula
  desc "🐳 VMs are bloat. Dockerise your CTF environment."
  homepage "https://hub.docker.com/r/platypew/pwnpad"
  url "https://github.com/pwnpad/pwnpad/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "ec76d0537756a418d5902e741ed23f60979ae1a8aa00c9719d2cf6a4b64a6a62"
  license "MIT"
  version "1.1.3"

  depends_on "docker" => :optional

  def install
    bin.install "p2"
    zsh_completion.install "_p2-autocomplete.zsh" => "_p2"
  end

  test do
    system "p2 version"
  end
end
