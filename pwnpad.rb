class Pwnpad < Formula
  desc "🐳 VMs are bloat. Dockerise your CTF environment."
  homepage "https://hub.docker.com/r/platypew/pwnpad"
  url "https://github.com/pwnpad/pwnpad/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "d83c3ac8d58e5e550f4f191ffc7978f7d15c3f868c0a12981cdd6fb5e8e316fe"
  license "MIT"
  version "1.0.5"

  depends_on "docker" => :optional

  def install
    bin.install "p2"
    zsh_completion.install "_p2-autocomplete.zsh" => "_p2"
  end

  test do
    system "p2 version"
  end
end
