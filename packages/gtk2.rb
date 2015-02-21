require 'package'

class Gtk2 < Package
  version '2.24.26'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/gtk+/2.24/gtk+-2.24.26.tar.xz'
  source_sha1 '214bc4240024c5dd31ee7134dd14097a58eb1273'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'glib'
  depends_on 'perl'
  depends_on 'cairo'
  depends_on 'gdk_pixbuf'
  depends_on 'libx11'
  depends_on 'pango'
  depends_on 'atk'
  
  def self.build
    system "./configure --enable-introspection=no"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
