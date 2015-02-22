require 'package'

class Nix < Package
  version '1.8'
  source_url 'http://nixos.org/releases/nix/nix-1.8/nix-1.8.tar.xz'
  source_sha1 'c03d9d5e80cd3d4c8b9aec5d2ef5b31a00a825fd'

  depends_on 'buildessential'
  depends_on 'pkgconfig'
  depends_on 'libgc'
  depends_on 'bison'
  depends_on 'patch'
  depends_on 'openssl'
  depends_on 'libxslt'
  depends_on 'bz2'
  depends_on 'perl_dbi'
  depends_on 'perl_dbd_sqlite'
  depends_on 'perl_www_curl'

  def self.build
    system "sed -i -- s,doc/manual/local.mk,, Makefile"
    system "./configure --with-store-dir=/usr/local/nix/store --localstatedir=/usr/local/nix/var --enable-gc"
    system "CC=gcc PATH=/usr/local/share/perl5/core_perl/ExtUtils:\$PATH make"
  end

  def self.install
    system "make DESTDIR=#{CREW_DEST_DIR} install"
    system "mkdir -p #{CREW_DEST_DIR}/usr/local/nix/store"
    system "mkdir -p #{CREW_DEST_DIR}/usr/local/nix/var"
  end
end
