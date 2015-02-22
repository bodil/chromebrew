require 'package'

class Libepoxy < Package
  version '1.2'
  source_url 'https://github.com/anholt/libepoxy/archive/v1.2.tar.gz'
  source_sha1 'e700520711b9e4fa07c286aa36e431d8ad4133f5'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'python'
  depends_on 'libx11'
  depends_on 'mesa'
  
  def self.build
    system "./autogen.sh"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
