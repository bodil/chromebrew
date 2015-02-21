require 'package'

class Gdk_pixbuf < Package
  version '2.31.2'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/gdk-pixbuf/2.31/gdk-pixbuf-2.31.2.tar.xz'
  source_sha1 'a7a451e61d47056a94753c300431ab78e2068983'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'glib'
  depends_on 'perl'
  depends_on 'gobject_introspection'
  
  def self.build
    system "./configure --without-libtiff"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
    system "#{CREW_DIST_DIR}/usr/local/bin/gdk-pixbuf-query-loaders > #{CREW_DEST_DIR}/usr/local/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache"
  end
end
