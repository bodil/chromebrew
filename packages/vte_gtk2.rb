require 'package'

class Vte_gtk2 < Package
  version '0.28.2'
  source_url 'http://ftp.gnome.org/pub/gnome/sources/vte/0.28/vte-0.28.2.tar.xz'
  source_sha1 'b0af0701ef9d6c7ede9c578366b12a70ac47ab66'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'gtk2'
  depends_on 'libxml2'
  
  def self.build
    system "./configure"
    system "CC=gcc make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
