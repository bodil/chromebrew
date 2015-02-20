require 'package'

class Freetype < Package
  version '2.5.5'
  source_url 'http://download.savannah.gnu.org/releases/freetype/freetype-2.5.5.tar.bz2'
  source_sha1 '7b7460ef51a8fdb17baae53c6658fc1ad000a1c2'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'bz2'
  depends_on 'libpng'

  def self.build
    system "./configure --with-harfbuzz=no"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end         
end
