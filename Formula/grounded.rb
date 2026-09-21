class Grounded < Formula
  include Language::Python::Virtualenv

  desc "Reference integrity firewall for code and AI agents. Sub-millisecond, offline, zero dependencies"
  homepage "https://github.com/gonisulaimann/Grounded"
  url "https://files.pythonhosted.org/packages/c4/b6/433fdfaa0c0ac780a60113a4e45f4a5c5051d1f84e46c0c29211704605d6/grounded_lint-0.14.0.tar.gz"
  sha256 "d51360ef472798f6d91faab16885b2781f3176aa6bf59524337ba6edc0f72781"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "grounded", shell_output("#{bin}/grounded --help")
  end
end
