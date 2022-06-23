class GcpPromQuery < Formula
  desc "CLI to query Google's Managed Prometheus - basically promtool with JWT support"
  homepage "https://github.com/sandipb/gcp-prom-query"
  url "https://github.com/sandipb/gcp-prom-query/releases/download/v0.1.1/gcp-prom-query_0.1.1_Darwin_all.tar.gz"
  sha256 "255b1865291ca8984cc1715e250d60fc41ed10f01858e88c4d0a003a197044f2"
  license "Apache-2.0"

  def install
    bin.install "gcp-prom-query"
    prefix.install_metafiles
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/gcp-prom-query version"))
  end
end
