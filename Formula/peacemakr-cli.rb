# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PeacemakrCli < Formula
  desc "CLI for Peacemakr's Secure Data Platform (Dockerhub: https://hub.docker.com/r/peacemakr/peacemakr-cli )"
  homepage "https://peacemakr.io"
  url "https://github.com/peacemakr-io/peacemakr-cli/releases/download/v0.1.0/peacemakr-cli-macos"
  sha256 "5a548fc8d8a9367a1c5c1172a7d1313066431515f05d671d16e769af2bf16b26"

  # depends_on "cmake" => :build

  def install
  	bin.install "peacemakr-cli-macos"
  end

end
