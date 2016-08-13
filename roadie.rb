#
# assets/formula.go
#
# Copyright (c) 2016 Junpei Kawamoto
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Roadie < Formula
  desc "A easy way to run your programs on Google Cloud Platform."
  homepage "https://github.com/jkawamoto/roadie"
  version "0.2.0"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.0/roadie_0.2.0_darwin_amd64.zip"
    sha256 "1585f1e8dbff1cf4b0cba0ab4d29fbbd22c4f85959df279997aaf12c3140ab3d"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.0/roadie_0.2.0_darwin_386.zip"
    sha256 "ba23fb3e9ef9a9944c12e78ebbf0360db92d7607106fd972d772a6f4dd135925"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
