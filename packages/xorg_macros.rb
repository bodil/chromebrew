require 'package'

class Xorg_macros < Package
  version '1.19.0'
  source_url 'http://xorg.freedesktop.org/releases/individual/util/util-macros-1.19.0.tar.bz2'
  source_sha1 '00cfc636694000112924198e6b9e4d72f1601338'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
