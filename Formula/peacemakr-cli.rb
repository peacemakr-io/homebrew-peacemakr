# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PeacemakrCli < Formula
  desc "CLI for Peacemakr's Secure Data Platform (Dockerhub: https://hub.docker.com/r/peacemakr/peacemakr-cli )"
  homepage "https://peacemakr.io"
  url "https://github.com/peacemakr-io/peacemakr-cli/releases/download/v0.2.0/peacemakr-cli_v0.2.0-Darwin_amd64.tar.gz"
  sha256 "21ec4bad2d23ce29ff730fc55f154473d1492c71caed5550725528ee980674aa"

  resource "peacemakr-core-crypto" do
    url "https://github.com/peacemakr-io/peacemakr-core-crypto/releases/download/v0.2.1.alpha/should-be-removed-peacemakr-core-crypto-macos-x86_64.tar.gz"
    sha256 "bec2d1eff8e15462f33a4b7aaa0aa1908b53861125a168b25f21d340f22efa71"
  end

  def install
    resource("peacemakr-core-crypto").stage do 
      lib.install "lib/libpeacemakr-core-crypto-cpp.dylib"
      lib.install "lib/libpeacemakr-core-crypto.dylib"
    end
  	bin.install "peacemakr-cli"
  end

end
