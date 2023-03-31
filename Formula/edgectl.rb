# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "CLI for Darcy Cloud"
  homepage "https://cloud.darcy.ai"
  version "2.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.3.2/edgectl_2.3.2_macos_arm64.tar.gz"
      sha256 "0fdf069bb5cba0aa8b68312b938bd6ffdf90219b88eed300a38de5e74adb48b5"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.3.2/edgectl_2.3.2_macos_amd64.tar.gz"
      sha256 "53751f03fe0ca97b5bba9270cd68fda4c8f33514e4ac852939f927461da7019c"

      def install
        bin.install "edgectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.3.2/edgectl_2.3.2_arm64.tar.gz"
      sha256 "d53767946273d524724fc3b665b589b3936f891cc5948aa40aa3a8c859c55920"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.3.2/edgectl_2.3.2_armv6.tar.gz"
      sha256 "1935b297bd38fe05f797375a34617d5a28ccd9fd49b5da54187cf57a93da92a4"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.3.2/edgectl_2.3.2_amd64.tar.gz"
      sha256 "dae08214b7e515ac3d2b3741a1c1fbee6234c15e93368608128699b3c469c4b0"

      def install
        bin.install "edgectl"
      end
    end
  end

  test do
    system "#{bin}/edgectl version"
  end
end
