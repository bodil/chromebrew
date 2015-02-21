require 'package'

class Giflib < Package
  version '5.1.1'
  source_url 'http://prdownloads.sourceforge.net/giflib/5.1.1/giflib-5.1.1.tar.bz2'
  source_sha1 'e5d716e0ccef671103c38c25693927e413fac639'

  depends_on 'buildessential'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
