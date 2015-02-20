require 'package'

class Yajl < Package
  version '2.1.0a'
  source_url 'http://github.com/lloyd/yajl/tarball/2.1.0'
  source_sha1 'fe6b3c7439b26175aee59cabf8c4923b9eb3650d'

  depends_on 'buildessential'
  depends_on 'cmake'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
