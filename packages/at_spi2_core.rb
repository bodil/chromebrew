require 'package'

class At_spi2_core < Package
  version '2.15.4'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/at-spi2-core/2.15/at-spi2-core-2.15.4.tar.xz'
  source_sha1 '076f978acc29e6a1d2b2edff1e2b0659c18f90d4'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'dbus'
  depends_on 'glib'
  depends_on 'intltool'
  depends_on 'gobject_introspection'
  depends_on 'libxi'
  
  def self.build
    system "./configure"
    system "CC=gcc make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
