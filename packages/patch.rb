require 'package'

class Patch < Package
  version '2.7.4'
  source_url 'http://ftp.gnu.org/gnu/patch/patch-2.7.4.tar.xz'
  source_sha1 'b2e29867263095e0f8bfd4b1319124b04102f2b0'

  depends_on 'buildessential'
  
  def self.build
    system "./configure"
    system "CC=gcc make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
