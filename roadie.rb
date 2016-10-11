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
  version "0.3.1"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.1/roadie_0.3.1_darwin_amd64.zip"
    sha256 "643ad6b70b8ded62af80e629313aecbf6c317d7b431726ffbecf0f49f641de01"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.1/roadie_0.3.1_darwin_386.zip"
    sha256 "f334187d6669267b65853dd51971226286189c2f418bf6b790251203dd76d359"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
