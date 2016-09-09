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
  version "0.2.2"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.2/roadie_0.2.2_darwin_amd64.zip"
    sha256 "3160f1a2278e4e94c71ffd23ecb679b56e8381b5337a2633ec67cad1921db4e9"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.2/roadie_0.2.2_darwin_386.zip"
    sha256 "a588eb557f9a3f645aff5d2752753208bdd349438aa562494c8f61da223cf20d"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
