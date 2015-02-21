require 'package'

class Flex < Package
  version '2.5.39'
  source_url 'http://prdownloads.sourceforge.net/project/flex/flex-2.5.39.tar.xz'
  source_sha1 '415e82bb0dc9b1713fc4802a9db2274cd8d2909a'

  depends_on 'buildessential'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
