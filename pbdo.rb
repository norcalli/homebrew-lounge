require 'formula'

class Pbdo < Formula
  homepage 'https://github.com/norcalli/scripts'
  url 'https://github.com/norcalli/scripts', :using => :git
  version '0.1.3'

  def install
    bin.install "pbdo"
  end

  test do
  end
end
