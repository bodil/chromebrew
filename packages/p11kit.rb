require 'package'

class P11kit < Package
  version '0.23.1'
  source_url 'http://p11-glue.freedesktop.org/releases/p11-kit-0.23.1.tar.gz'
  source_sha1 'b91c26cf4270ef8223c105016ea0eab581403af4'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'libtasn1'
  depends_on 'libffi'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
