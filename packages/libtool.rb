require 'package'

class Libtool < Package
  version '2.4.5'
  source_url 'http://ftpmirror.gnu.org/libtool/libtool-2.4.5.tar.gz'
  source_sha1 '963a78eca19e0adee8c9f6584adb9a3ec808480a'

  depends_on 'buildessential'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end         
end
