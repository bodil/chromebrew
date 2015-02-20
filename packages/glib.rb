require 'package'

class Glib < Package
  version '2.43.3'
  source_url 'https://download.gnome.org/sources/glib/2.43/glib-2.43.3.tar.xz'
  source_sha1 '1763c825b344e15ba953b6d05e2d1f6ddcbd60d7'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'python27'
  depends_on 'perl'
  depends_on 'libffi'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
