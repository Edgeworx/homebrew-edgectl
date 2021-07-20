# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "CLI for Edgeworx Cloud"
  homepage "https://cloud.edgeworx.io"
  version "0.3.37"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.37/edgectl_0.3.37_macos_amd64.tar.gz"
      sha256 "fabf01f575db728947029fc2c02efbf50f9b3a5f855d9df18aae87bff4bb9a83"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.37/edgectl_0.3.37_macos_arm64.tar.gz"
      sha256 "2c09a218018f55e9c6b8d83aef032b1bff307467447017ea8810a47918e24285"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.37/edgectl_0.3.37_amd64.tar.gz"
      sha256 "39233e2cc2a26c253a5623f518366dda5780f4c98e89854e81602b3da6d08809"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.37/edgectl_0.3.37_arm.tar.gz"
      sha256 "e03dabb9c442b8cac3792eab9c42ff7c03335f7264054f386800a59718191f3e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Edgeworx/homebrew-edgectl/releases/download/v0.3.37/edgectl_0.3.37_arm64.tar.gz"
      sha256 "84d590e73752f4b6c98d58cc82d08499ed508e9e18ae53bc6f374a2a3596016e"
    end
  end

  def install
    bin.install "edgectl"
  end

  test do
    system "#{bin}/edgectl version"
  end
end
