require 'package'

class Pixman < Package
  version '0.32.6'
  source_url 'http://cairographics.org/releases/pixman-0.32.6.tar.gz'
  source_sha1 '8791343cbf6d99451f4d08e8209d6ac11bf96df2'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'libpng'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
