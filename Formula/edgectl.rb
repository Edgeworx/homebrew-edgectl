# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "CLI for Edgeworx Cloud"
  homepage "https://cloud.edgeworx.io"
  version "0.3.7"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.7/edgectl-macos-amd64.tar.gz"
    sha256 "02c5ba0a8d4e9dd4bf32352bee79acd69cf4978be23314d23ebc48f7e1138167"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.7/edgectl-linux-amd64.tar.gz"
    sha256 "ab96a2b4785752d3cb3098e7d9b3be9ade81c1431b849f2399bc97dc1aedf906"
  end

  def install
    bin.install "edgectl"
  end

  test do
    system "#{bin}/edgectl version"
  end
end
