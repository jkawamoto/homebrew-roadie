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
  version "0.2.3"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.3/roadie_0.2.3_darwin_amd64.zip"
    sha256 "5b720b0a6b4f4aec4696af31079725ad3fca4d2ca056d3c948fc35dac8852668"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.3/roadie_0.2.3_darwin_386.zip"
    sha256 "fff8c92857ae6210a848dcb2ba63ccaabd74b07f1cd18e4142ec2379cd99fd0c"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
