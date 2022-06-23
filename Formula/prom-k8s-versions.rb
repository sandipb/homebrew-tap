class PromK8sVersions < Formula
  desc "Use Prometheus metrics to fetch Kubernetes version info from various clusters"
  homepage "https://github.com/sandipb/prom-k8s-versions"
  url "https://github.com/sandipb/prom-k8s-versions/releases/download/v0.0.1/archive.prom-k8s-versions_0.0.1_Darwin_all.tar.gz"
  sha256 "502678aa40463419bd0b2a5963272ba537ba087afeb7a526faeb56c94ab9aaff"
  license "Apache-2.0"

  def install
    bin.install "prom-k8s-versions"
    prefix.install_metafiles
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/prom-k8s-versions --version"))
  end
end
