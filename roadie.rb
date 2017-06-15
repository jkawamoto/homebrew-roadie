#
# roadie.rb
#
# Copyright (c) 2016-2017 Junpei Kawamoto
#
# This file is part of Roadie.
#
# Roadie is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Roadie is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Roadie.  If not, see <http://www.gnu.org/licenses/>.
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

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
