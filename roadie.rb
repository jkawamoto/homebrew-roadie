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
  version "0.3.3"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.3/roadie_0.3.3_darwin_amd64.zip"
    sha256 "c374494ee694b0f53206acc3ebe50d2b402afdbfbe5a771447af32e772cad205"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.3/roadie_0.3.3_darwin_386.zip"
    sha256 "221bf6d26c1d2a7472d1aa1902fd63a252d01274fd94d1e1b28c72832bac130c"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
