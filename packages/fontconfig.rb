require 'package'

class Fontconfig < Package
  version '2.11.1'
  source_url 'http://www.freedesktop.org/software/fontconfig/release/fontconfig-2.11.1.tar.bz2'
  source_sha1 '08565feea5a4e6375f9d8a7435dac04e52620ff2'

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
