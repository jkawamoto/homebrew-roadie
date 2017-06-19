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
class Roadie < Formula
  desc "A easy way to run your programs on Google Cloud Platform."
  homepage "https://github.com/jkawamoto/roadie"
  version "0.3.10"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.10/roadie_0.3.10_darwin_amd64.zip"
    sha256 "c388c6dbc7433c655b01f59c01142ac7a56e4d1a2c656a60e0e0c615208c587b"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.10/roadie_0.3.10_darwin_386.zip"
    sha256 "606342f6e29162162ecd1b3183ab33a5e09ddce46513b035315c77b23474c189"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
