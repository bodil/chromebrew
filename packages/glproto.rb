require 'package'

class Glproto < Package
  version '1.4.17'
  source_url 'http://xorg.freedesktop.org/releases/individual/proto/glproto-1.4.17.tar.bz2'
  source_sha1 '20e061c463bed415051f0f89e968e331a2078551'

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
