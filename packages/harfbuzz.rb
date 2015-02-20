require 'package'

class Harfbuzz < Package
  version '0.9.38'
  source_url 'http://www.freedesktop.org/software/harfbuzz/release/harfbuzz-0.9.38.tar.bz2'
  source_sha1 '00c24a228206a5646166630e02b542d7d3fb4544'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'glib'
  
  def self.build
    system "./configure"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
