class Grounded < Formula
  include Language::Python::Virtualenv

  desc "Find dangling references in code comments. Deterministic, offline, zero dependencies"
  homepage "https://github.com/gonisulaimann/Grounded"
  url "https://files.pythonhosted.org/packages/78/8f/dc82eb6190142c43bbba357edcd9e00f35f986873e5b4ac50522d01956b2/grounded_lint-0.13.0.tar.gz"
  sha256 "7c1353b8a03b271d58a5d4aa67557e7d7e34a2b671fbf61eaaf200a6441530b5"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "grounded", shell_output("#{bin}/grounded --help")
  end
end
