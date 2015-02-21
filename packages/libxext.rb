require 'package'

class Libxext < Package
  version '1.3.3'
  source_url 'http://xorg.freedesktop.org/releases/individual/lib/libXext-1.3.3.tar.bz2'
  source_sha1 '43abab84101159563e68d9923353cc0b3af44f07'

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
