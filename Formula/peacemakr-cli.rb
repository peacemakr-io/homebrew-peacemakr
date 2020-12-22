# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PeacemakrCli < Formula
  desc "CLI for Peacemakr's Secure Data Platform (Dockerhub: https://hub.docker.com/r/peacemakr/peacemakr-cli )"
  homepage "https://peacemakr.io"
  url "https://github.com/peacemakr-io/peacemakr-cli/releases/download/v0.2.2/peacemakr-cli_v0.2.2-Darwin_amd64.tar.gz"
  sha256 "1c0a2a1045f931f989b9d8ce69f593cb5c650bc7201757d132f0c66dd755a90c"

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
