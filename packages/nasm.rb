require 'package'

class Nasm < Package
  version '2.11.06'
  source_url 'http://www.nasm.us/pub/nasm/releasebuilds/2.11.06/nasm-2.11.06.tar.xz'
  source_sha1 '0f3f8b3091e4024d0ef203a823896604640ac681'

  depends_on 'buildessential'
  
  def self.build
    system "./configure --prefix=#{CREW_DEST_DIR}/usr/local"
    system "make"
  end
  
  def self.install
    system "make install"
  end
end
