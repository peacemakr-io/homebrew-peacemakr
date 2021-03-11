# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Peacemakr < Formula
  desc "CLI for Peacemakr's Secure Data Platform (Dockerhub: https://hub.docker.com/r/peacemakr/peacemakr-cli )"
  homepage "https://peacemakr.io"
  url "https://github.com/peacemakr-io/peacemakr-cli/releases/download/v0.3.1/peacemakr-Darwin_amd64.tar.gz"
  sha256 "8ee3969bc3fd69d0866dea7759b7b66969269804f69d377a5df65325a7774fae"

  resource "peacemakr-core-crypto" do
    url "https://github.com/peacemakr-io/peacemakr-core-crypto/releases/download/v0.2.2/peacemakr-core-crypto-macos-x86_64.tar.gz"
    sha256 "af161ea41b38999713fe2342073d7c0fe9e5499ce82eedd2a92e2b7a67c94b52"
  end

  def install
    resource("peacemakr-core-crypto").stage do
      lib.install "lib/libpeacemakr-core-crypto.dylib"
    end
  	bin.install "peacemakr"
  end

end
