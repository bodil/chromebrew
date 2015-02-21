require 'package'

class Libxfixes < Package
  version '5.0.1'
  source_url 'http://xorg.freedesktop.org/releases/individual/lib/libXfixes-5.0.1.tar.bz2'
  source_sha1 'e14fa072bd70b30eef47391cac637bdb4de9e8a3'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'xorg_macros'
  depends_on 'fixesproto'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
