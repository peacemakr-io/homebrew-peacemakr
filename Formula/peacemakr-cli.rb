# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PeacemakrCli < Formula
  desc "CLI for Peacemakr's Secure Data Platform (Dockerhub: https://hub.docker.com/r/peacemakr/peacemakr-cli )"
  homepage "https://peacemakr.io"
  url "https://github.com/peacemakr-io/peacemakr-cli/releases/download/v0.1.0/peacemakr-cli_v10.1.0-Darwin_amd64.tar.gz"
  sha256 "2100b8975535d207b92ddbc2e805cc4d49e627125a9f4b17060b8941375ea1ab"

  # depends_on "cmake" => :build

  def install
  	bin.install "peacemakr-cli"
  end

end
