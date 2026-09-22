class Grounded < Formula
  include Language::Python::Virtualenv

  desc "Reference integrity firewall for code and AI agents. Sub-millisecond, offline, zero dependencies"
  homepage "https://github.com/gonisulaimann/Grounded"
  url "https://files.pythonhosted.org/packages/1d/c8/93d250e5f819ec00003750d910b913bc62e82dcb0ae206b6b1a2de603bc0/grounded_lint-0.15.0.tar.gz"
  sha256 "66585750d14881912442edfc64fdf01fa0cae415279175773a5484c3a92e1bba"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "grounded", shell_output("#{bin}/grounded --help")
  end
end
