# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PeacemakrCli < Formula
  desc "CLI for Peacemakr's Secure Data Platform (Dockerhub: https://hub.docker.com/r/peacemakr/peacemakr-cli )"
  homepage "https://peacemakr.io"
  url "https://github.com/peacemakr-io/peacemakr-cli/releases/download/v0.1.0/peacemakr-cli_v10.1.0-Darwin_amd64.tar.gz"
  sha256 "2100b8975535d207b92ddbc2e805cc4d49e627125a9f4b17060b8941375ea1ab"

  resource "peacemakr-core-crypto" do
    url "https://github.com/peacemakr-io/peacemakr-core-crypto/releases/download/v0.2.0/peacemakr-core-crypto-macos-x86_64.tar.gz"
    sha256 "9feabed563896817a5ccc612312724151c24f9978ba4e6ca8a2fc0cd9d47e082"
  end 

  def install
    resource("peacemakr-core-crypto").stage do 
      lib.install "lib/libpeacemakr-core-crypto-cpp.dylib"
      lib.install "lib/libpeacemakr-core-crypto.dylib"
    end
  	bin.install "peacemakr-cli"
  end

end
