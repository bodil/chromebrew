require 'package'

class Emacs_gtk2 < Package
  version '24.4'
  source_url 'ftp://ftp.gnu.org/gnu/emacs/emacs-24.4.tar.xz'
  source_sha1 '68f9b1f7570a13d076b94c20f2d20fe40782031c'

  depends_on "diffutils"
  depends_on "m4"
  depends_on "autoconf"
  depends_on "automake"
  depends_on "gtk2"
  depends_on "libjpeg"
  depends_on "giflib"
  depends_on "libxpm"
  depends_on "libpng"
  depends_on "freetype"

  def self.build
    system "./configure --prefix=/usr/local --with-x-toolkit=gtk2 --without-makeinfo --with-tiff=no"
    system "sed -i '/static void \\*/{ N; /static void \\*\\naligned_alloc/{ s/static //g}}' src/alloc.c"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
