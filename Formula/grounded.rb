class Grounded < Formula
  include Language::Python::Virtualenv

  desc "Find dangling references in code comments. Deterministic, offline, zero dependencies"
  homepage "https://github.com/gonisulaimann/Grounded"
  url "https://files.pythonhosted.org/packages/31/c0/650a14c073f24b2bffc52487ba1a9c6d117a1de8933d24b52f1410eb1414/grounded_lint-0.12.1.tar.gz"
  sha256 "15c1b31c98ff3b54dbdb1823232d3599ec4ec77799fc0bc8909e70c4c70d89ad"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "grounded", shell_output("#{bin}/grounded --help")
  end
end
