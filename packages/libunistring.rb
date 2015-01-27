require 'package'

class Libunistring < Package
  version '2.3.6'
  source_url 'http://ftp.gnu.org/gnu/libunistring/libunistring-0.9.4.tar.gz'
  source_sha1 'f975899e13171f7a5860c61dd78e14093e1e7640'

  depends_on 'buildessential'
  depends_on 'perl'
  depends_on 'libtool'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end         
end
