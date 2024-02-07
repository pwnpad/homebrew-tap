class Pwnpad < Formula
  desc "🐳 VMs are bloat. Dockerise your CTF environment."
  homepage "https://hub.docker.com/r/platypew/pwnpad"
  url "https://github.com/pwnpad/pwnpad/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "ed7c7c8cb3040f3d300de26dcf31d0beb39f185cb44f5df57f6690f09209fa3b"
  license "MIT"
  version "1.1.0"

  depends_on "docker" => :optional

  def install
    bin.install "p2"
    zsh_completion.install "_p2-autocomplete.zsh" => "_p2"
  end

  test do
    system "p2 version"
  end
end
