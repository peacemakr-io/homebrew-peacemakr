# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PeacemakrCli < Formula
  desc "CLI for Peacemakr's Secure Data Platform (Dockerhub: https://hub.docker.com/r/peacemakr/peacemakr-cli )"
  homepage "https://peacemakr.io"
  url "https://github.com/peacemakr-io/peacemakr-cli/releases/download/v0.1.0/peacemakr-cli"
  sha256 "029a65d7fedc723ecf99257aaf240457df7e4375270ba85f0752169893aa846e"

  # depends_on "cmake" => :build

  def install
  	bin.install "peacemakr-cli"
  end

end
