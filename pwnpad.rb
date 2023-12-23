class Pwnpad < Formula
  desc "🐳 VMs are bloat. Dockerise your CTF environment."
  homepage "https://hub.docker.com/r/platypew/pwnpad"
  url "https://github.com/pwnpad/pwnpad/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "15729895443a883e6241806bf3e4f1385e1d5f2dc893708925a3cfef0e5171ce"
  license "MIT"
  version "1.0.1"

  depends_on "docker" => :optional

  def install
    bin.install "p2"
    zsh_completion.install "_p2-autocomplete.zsh" => "_p2"
  end

  test do
    system "p2 version"
  end
end
