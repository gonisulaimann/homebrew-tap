class Grounded < Formula
  include Language::Python::Virtualenv

  desc "Find dangling references in code comments. Deterministic, offline, zero dependencies"
  homepage "https://github.com/gonisulaimann/Grounded"
  url "https://files.pythonhosted.org/packages/c7/ef/43dab73dcabbef660d1ad1a22efaa8068a9db0496d9e9f055ff6018d44eb/grounded_lint-0.9.0.tar.gz"
  sha256 "95ae9a6f44aca791cff18819fef3c9ca76e59c329e76791804810edc226953c6"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "grounded", shell_output("#{bin}/grounded --help")
  end
end
