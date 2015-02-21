require 'package'

class Gobject_introspection < Package
  version '1.43.3'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/gobject-introspection/1.43/gobject-introspection-1.43.3.tar.xz'
  source_sha1 'eb4db77dfb7bf26e25dbfc8d03eb38be7adfb7cc'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'glib'
  depends_on 'flex'
  depends_on 'bison'
  depends_on 'cairo'
  depends_on 'libffi'
  depends_on 'python'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
