require 'package'

class Perl_www_curl < Package
  version '4.17'
  source_url 'https://cpan.metacpan.org/authors/id/S/SZ/SZBALINT/WWW-Curl-4.17.tar.gz'
  source_sha1 '8ec7b7b39bd653539671fb02fbb7d0ff4863e636'

  depends_on 'buildessential'
  depends_on 'perl'
  
  def self.build
    system "perl Makefile.PL PREFIX=/usr/local"
    system "make"
  end
  
  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
  end
end
