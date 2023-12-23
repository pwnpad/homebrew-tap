class Pwnpad < Formula
  desc "🐳 VMs are bloat. Dockerise your CTF environment."
  homepage "https://hub.docker.com/r/platypew/pwnpad"
  url "https://github.com/pwnpad/pwnpad/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "6cdc19dd23fb4000c299efd64e12fed891cae8185f99ed6e427652db3ec6876b"
  license "MIT"
  version "1.0.2"

  depends_on "docker" => :optional

  def install
    bin.install "p2"
    zsh_completion.install "_p2-autocomplete.zsh" => "_p2"
  end

  test do
    system "p2 version"
  end
end
