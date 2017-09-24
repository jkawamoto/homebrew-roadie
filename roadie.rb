#
# roadie.rb
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
require 'rbconfig'
class Roadie < Formula
  desc "A easy way to run your programs on Google Cloud Platform."
  homepage "https://github.com/jkawamoto/roadie"
  version "0.3.13"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/roadie/releases/download/v0.3.13/roadie_0.3.13_darwin_amd64.zip"
      sha256 "867fb542ec3a4f0c1cb27f48dd6bf6bde7b0790f1a2a5860915558dd8b429c34"
    when /linux/
      url "https://github.com/jkawamoto/roadie/releases/download/v0.3.13/roadie_0.3.13_linux_amd64.tar.gz"
      sha256 "9812257ccb253096f3cba4ad5c72a3894f8fc0cafb29cebe128363ff93b104d4"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/roadie/releases/download/v0.3.13/roadie_0.3.13_darwin_386.zip"
      sha256 "d00087073f8af769ad1b7ac7fd1630eddf1a69a0f89e184184e0927676523f42"
    when /linux/
      url "https://github.com/jkawamoto/roadie/releases/download/v0.3.13/roadie_0.3.13_linux_386.tar.gz"
      sha256 "7bdeb4e2da8c502f2dac2ed2d3c9a3230107e962d5265fbb0adeb5bc7041b3a8"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
