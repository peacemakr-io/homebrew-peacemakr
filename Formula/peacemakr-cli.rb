# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PeacemakrCli < Formula
  desc "CLI for Peacemakr's Secure Data Platform (Dockerhub: https://hub.docker.com/r/peacemakr/peacemakr-cli )"
  homepage "https://peacemakr.io"
  url "https://github.com/peacemakr-io/peacemakr-cli/releases/download/v0.2.1/peacemakr-cli_v0.2.1-Darwin_amd64.tar.gz"
  sha256 "0344408905ef8f95bdd4ed6893e5062eee58c18492a8aa451919638653705a99"

  resource "peacemakr-core-crypto" do
    url "https://github.com/peacemakr-io/peacemakr-core-crypto/releases/download/v0.2.1-beta/peacemakr-core-crypto-macos-x86_64.tar.gz"
    sha256 "fcb9c361b01484a6404941524c863a30ec3db752cc420178ff80e6ccd8c9cc45"
  end

  def install
    resource("peacemakr-core-crypto").stage do
      lib.install "lib/libpeacemakr-core-crypto-cpp.dylib"
      lib.install "lib/libpeacemakr-core-crypto.dylib"
    end
  	bin.install "peacemakr-cli"
  end

end
