require 'package'

class Gtk3 < Package
  version '3.15.7'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/gtk+/3.15/gtk+-3.15.7.tar.xz'
  source_sha1 'c8efbdf1de277875b7f37463aef01d76b76bd81e'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'libxi'
  depends_on 'libxfixes'
  depends_on 'atk'
  depends_on 'gdk_pixbuf'
  depends_on 'pango'
  depends_on 'cairo'
  depends_on 'gobject_introspection'
  depends_on 'at_spi2_atk'

  def self.build
    system "sed -i -- 's/modules demos tests testsuite examples/modules/' Makefile.am"
    system "sed -i -- 's/docs m4macros build/m4macros build/' Makefile.am"
    system "aclocal"
    system "automake"
    system "autoconf"
    system "./configure"
    system "CC=gcc make"
  end

  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
