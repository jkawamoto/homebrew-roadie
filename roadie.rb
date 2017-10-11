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
  version "0.4.0"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/roadie/releases/download/v0.4.0/roadie_0.4.0_darwin_amd64.zip"
      sha256 "4945e12f2b4a2c33f5fb66439b0711cac24fbcd25ca2d7a78e41d11e25151a40"
    when /linux/
      url "https://github.com/jkawamoto/roadie/releases/download/v0.4.0/roadie_0.4.0_linux_amd64.tar.gz"
      sha256 "c6ae094046e509ef6ddd4eac363bcd31c33b23ee84e72fd3b5e44638b30cbdc7"
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
      url "https://github.com/jkawamoto/roadie/releases/download/v0.4.0/roadie_0.4.0_darwin_386.zip"
      sha256 "0806c6080cbd5bc306b2e5594eb88c3f4d8b22c6385d63c940fc259ca334b722"
    when /linux/
      url "https://github.com/jkawamoto/roadie/releases/download/v0.4.0/roadie_0.4.0_linux_386.tar.gz"
      sha256 "45b41647a37a7bee546203f68a777e0235d0c240356d344eb279c12c0a8869d9"
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
