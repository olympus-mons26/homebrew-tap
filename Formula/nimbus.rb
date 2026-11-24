
class Nimbus < Formula
  include Language::Python::Virtualenv

  desc "A colorful command-line weather reporter"
  homepage "https://github.com/olympus-mons26/nimbus"
  url "https://github.com/olympus-mons26/nimbus/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "92f0aa304433a7e68b6bcb1a8ade078e887867632cb5fe74fb8bd1090c15cf94"
  license "MIT"

  # Choose the current Homebrew Python version
  # compatible with Nimbus's pyproject.toml.
  depends_on "python@3.14"

  # Homebrew will generate the Python dependency
  # resource blocks for you in the next step.

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Nimbus", shell_output("#{bin}/wf wai")
  end
end
