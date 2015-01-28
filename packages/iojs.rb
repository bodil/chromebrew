require 'package'

class Iojs < Package
  version '1.0.4'
  source_url 'https://iojs.org/dist/v1.0.4/iojs-v1.0.4-linux-x64.tar.xz'
  source_sha1 '2ce67baccc896989a5176998ac756602741fc7d8'

  def self.install
    system "mkdir -p #{CREW_DEST_DIR}/usr/local/bin"
    system "mkdir -p #{CREW_DEST_DIR}/usr/local/include"
    system "mkdir -p #{CREW_DEST_DIR}/usr/local/lib"
    system "mkdir -p #{CREW_DEST_DIR}/usr/local/share"
    system "cp -a bin/* #{CREW_DEST_DIR}/usr/local/bin/"
    system "cp -a include/* #{CREW_DEST_DIR}/usr/local/include/"
    system "cp -a lib/* #{CREW_DEST_DIR}/usr/local/lib/"
    system "cp -a share/* #{CREW_DEST_DIR}/usr/local/share/"
  end         
end
