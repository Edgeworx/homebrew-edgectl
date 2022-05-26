# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "CLI for Darcy Cloud"
  homepage "https://cloud.darcy.ai"
  version "2.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.1.11/edgectl_2.1.11_macos_arm64.tar.gz"
      sha256 "f505f8ef43e31b15b3b4d77d09ad3b067f7c926b60afc6730968dc18a2949b83"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.1.11/edgectl_2.1.11_macos_amd64.tar.gz"
      sha256 "c915c493ad56c6429aba41229079ac9203381aa91612f734995dd03aac560d2a"

      def install
        bin.install "edgectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.1.11/edgectl_2.1.11_armv6.tar.gz"
      sha256 "59a0b75227b54c67fb160c53506919e6bb2c7c7e347649576ca556279fdc1085"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.1.11/edgectl_2.1.11_arm64.tar.gz"
      sha256 "1183ba30e40fede259f761665a343a020e7f3340b519924746cbe7cbbbe107a3"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/edgeworx/edgectl/releases/download/v2.1.11/edgectl_2.1.11_amd64.tar.gz"
      sha256 "18b0ace9a729c4a5fc38885ef7e4a3af81a1c6dcb1866967c4846037c101a8a7"

      def install
        bin.install "edgectl"
      end
    end
  end

  test do
    system "#{bin}/edgectl version"
  end
end
