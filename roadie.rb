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
  version "0.2.5"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.5/roadie_0.2.5_darwin_amd64.zip"
    sha256 "af602e9400e2fa0cf926e46a8b39a44896f973dadb4c25d803f64a59b4f59939"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.2.5/roadie_0.2.5_darwin_386.zip"
    sha256 "5ea51e29b48161f39864f45411188514968a89b13a7a49c94e9a6ab441502fbc"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
