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
  version "0.3.2"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.2/roadie_0.3.2_darwin_amd64.zip"
    sha256 "7ec555a5f5509bb5f533cfaa7b995663a9efc1f726d54f076f3784d84e8b347d"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.2/roadie_0.3.2_darwin_386.zip"
    sha256 "3e1cd0c4e9d0a0975f45f5ba1dccc29523d8c4b4e15c3538227a9636254a953b"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
