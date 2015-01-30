require 'package'

class Joe < Package
  version '3.7'
  source_url 'http://prdownloads.sourceforge.net/project/joe-editor/JOE%20sources/joe-3.7/joe-3.7.tar.gz'
  source_sha1 '54398578886d4a3d325aece52c308a939d31101d'

  depends_on 'buildessential'
  depends_on 'ncurses'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
