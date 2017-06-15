#
# assets/formula.go
#
# Copyright (c) 2016-2017 Junpei Kawamoto
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Roadie < Formula
  desc "A easy way to run your programs on Google Cloud Platform."
  homepage "https://github.com/jkawamoto/roadie"
  version "0.3.9"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.9/roadie_0.3.9_darwin_amd64.zip"
    sha256 "f9cdad021299bdb2f84ef257c6a7918c28a2551581af0b6d5dfddd645c00c7d7"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.9/roadie_0.3.9_darwin_386.zip"
    sha256 "fbdc644bb10f3fbdae61868b90afe9aced424bf6d096cc6e07118fa750704035"
  end

  system "brew tap caskroom/cask"

  def install
    system "brew cask install google-cloud-sdk" => :run
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
