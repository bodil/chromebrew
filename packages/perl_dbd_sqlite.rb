require 'package'

class Perl_dbd_sqlite < Package
  version '1.46'
  source_url 'https://cpan.metacpan.org/authors/id/I/IS/ISHIGAKI/DBD-SQLite-1.46.tar.gz'
  source_sha1 '1210af99d7010b315e4c4de9fb895ac34bdb22bd'

  depends_on 'buildessential'
  depends_on 'perl'
  depends_on 'sqlite'
  
  def self.build
    system "perl Makefile.PL PREFIX=/usr/local"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
