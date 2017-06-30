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
  version "0.3.11"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.11/roadie_0.3.11_darwin_amd64.zip"
    sha256 "5f68f52eb117bb3bc106d41c4de58f1e39377c5d8f84f7c3880de79b8fc86546"
  else
    url "https://github.com/jkawamoto/roadie/releases/download/v0.3.11/roadie_0.3.11_darwin_386.zip"
    sha256 "8bb9bb3d5e4bd9038d69bf692fac09be46fd65b0a60c5fe8d9fb436320f0a53d"
  end

  def install
    bin.install "roadie"
  end

  test do
    system "roadie"
  end

end
