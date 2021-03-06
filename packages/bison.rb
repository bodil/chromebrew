require 'package'

class Bison < Package
  version '3.0.4'
  source_url 'http://ftp.gnu.org/gnu/bison/bison-3.0.4.tar.xz'
  source_sha1 '8270497aad88c7dd4f2c317298c50513fb0c3c8e'

  depends_on 'buildessential'
  depends_on 'flex'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
