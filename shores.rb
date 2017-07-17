class Shores < Formula

#  homepage "https://github.com/anjackson/percipio"
#  url "https://github.com/downloads/anjackson/percipio/percipio-0.0.2-SNAPSHOT-jar-with-dependencies.jar",
#    :using => :nounzip
#  version "0.0.2-snapshot-20121116"
# sha256 "8df3fdd01cfb549ed97e979ee86e94846d36ef38511859e5b363ccab1ff3fc7c"


# TODO grab from maven repo

  homepage 'http://www.stokesdrift.org'


  url 'https://oss.sonatype.org/content/repositories/snapshots/org/stokesdrift/shores/0.1.1-SNAPSHOT/shores-0.1.1-20170712.121845-2-capsule.jar'
  version '0.1.1'
  sha256 'https://oss.sonatype.org/content/repositories/snapshots/org/stokesdrift/shores/0.1.1-SNAPSHOT/shores-0.1.1-20170712.121845-2-capsule.jar.sha256'


  def install
    libexec.install "shores-0.0.1-SNAPSHOT-jar-with-dependencies.jar" => "shores.jar"
    bin.write_jar_script libexec/"shores.jar", "shores"
  end


  def test
    system "#{bin}/shores"
  end

end
