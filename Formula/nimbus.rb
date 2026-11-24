
class Nimbus < Formula
  include Language::Python::Virtualenv

  desc "A colorful command-line weather reporter"
  homepage "https://github.com/olympus-mons26/nimbus"
  url "https://github.com/olympus-mons26/nimbus/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_predicate bin/"wf", :executable?
    assert_match "Nimbus", shell_output("#{bin}/wf wai")
  end
end
