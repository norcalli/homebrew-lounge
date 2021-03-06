require 'formula'

class ToggleOsxShadows < Formula
  homepage 'https://github.com/puffnfresh/toggle-osx-shadows.git'
  url 'https://github.com/puffnfresh/toggle-osx-shadows.git', :using => :git

  def install
    system "make"
    bin.install "toggle-osx-shadows"
  end

  test do
    # Twice so that effectively nothing changes
    system "toggle-osx-shadows"
    system "toggle-osx-shadows"
  end
end
