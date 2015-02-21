require 'package'

class Fixesproto < Package
  version '5.0'
  source_url 'http://xorg.freedesktop.org/releases/individual/proto/fixesproto-5.0.tar.bz2'
  source_sha1 'ab605af5da8c98c0c2f8b2c578fed7c864ee996a'

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
