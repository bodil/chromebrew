require 'package'

class Libev < Package
  version '4.19'
  source_url 'http://dist.schmorp.de/libev/libev-4.19.tar.gz'
  source_sha1 '5a25212eb976703243fadf3a027e0fe031f29474'

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
