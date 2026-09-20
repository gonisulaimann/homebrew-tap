class Grounded < Formula
  include Language::Python::Virtualenv

  desc "Find dangling references in code comments. Deterministic, offline, zero dependencies"
  homepage "https://github.com/gonisulaimann/Grounded"
  url "https://files.pythonhosted.org/packages/81/66/b592b61cbf0d345567bf7abfc41df0e203ee3233ae165d4f18c83c95adaf/grounded_lint-0.7.1.tar.gz"
  sha256 "876411752dba929b1a79f53b67cc12ea2dabddc0ae833fd637c0186a595ed8aa"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "grounded", shell_output("#{bin}/grounded --help")
  end
end
