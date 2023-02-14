class Slide < Formula
  desc "AutoCAD slide library and command line utility"
  homepage "https://github.com/ten0s/slide"
  url "https://github.com/ten0s/slide/archive/refs/tags/0.1.0.tar.gz"
  sha256 "5efd1868138f8d42fa8fe5f62fb21fec7411e7063ac6bb6abdb3ac0624d70c03"
  license "TODO"

  depends_on "atk"        => :build
  depends_on "fribidi"    => :build
  depends_on "gdk-pixbuf" => :build
  depends_on "graphite2"  => :build
  depends_on "gtk+3"      => :build
  depends_on "harfbuzz"   => :build
  depends_on "libepoxy"   => :build
  depends_on "libjpeg"    => :build
  depends_on "libtiff"    => :build
  depends_on "pango"      => :build
  depends_on "pcre2"      => :build
  depends_on "pkg-config" => :build

  depends_on "glib"
  depends_on "gobject-introspection"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
    prefix.install "README.md"
  end

  test do
    system "true"
  end
end