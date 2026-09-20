class Grounded < Formula
  include Language::Python::Virtualenv

  desc "Find dangling references in code comments. Deterministic, offline, zero dependencies"
  homepage "https://github.com/gonisulaimann/Grounded"
  url "https://files.pythonhosted.org/packages/1a/35/58a0dbae526d5b4347a1d1b23ba532d31357beafe04c6eb419a807cdd8fd/grounded_lint-0.8.0.tar.gz"
  sha256 "cb9d33a8af10928c5ecfe173934f584b8ca74d96b6a1ea09d31cee0d1d3979d9"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "grounded", shell_output("#{bin}/grounded --help")
  end
end
