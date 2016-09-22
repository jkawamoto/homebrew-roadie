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
  version "0.2.7"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.7/roadie_0.2.7_darwin_amd64.zip"
    sha256 "4e69658705feec50c7012f075cbe9dc6d10acab5745af6fb0cd4407d864dd3f9"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.7/roadie_0.2.7_darwin_386.zip"
    sha256 "405712508c870e6e7bbfc7b0f47734df2eedb189503a7bc9934ab0a3abd110bb"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
