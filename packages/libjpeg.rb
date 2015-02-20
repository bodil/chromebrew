require 'package'

class Libjpeg < Package
  version '1.4.0'
  source_url 'http://prdownloads.sourceforge.net/libjpeg-turbo/1.4.0/libjpeg-turbo-1.4.0.tar.gz'
  source_sha1 'a9ed7a99a6090e0848836c5df8e836f300a098b9'

  depends_on 'buildessential'
  depends_on 'nasm'
  
  def self.build
    system "./configure --prefix=/usr/local"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
