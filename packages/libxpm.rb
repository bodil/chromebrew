require 'package'

class Libxpm < Package
  version '3.5.11'
  source_url 'http://xorg.freedesktop.org/releases/individual/lib/libXpm-3.5.11.tar.bz2'
  source_sha1 '77b95dd1c8cd9bc00b3b834b53d824409202acbb'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'xorg_macros'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
