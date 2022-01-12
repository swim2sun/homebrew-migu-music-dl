class migu-music-dl < Formula
  include Language::Python::Virtualenv

  desc "Migu music downloader"
  homepage "https://github.com/swim2sun/migu-music-dl"
  url "https://files.pythonhosted.org/packages/fd/92/d84cc6b7f12cf03a6777972a697ca711865c5f186e4ef25cf1b4f4002cb3/migu-music-dl-0.1.1.tar.gz"
  sha256 "9042d0f141e75a15934fa90ff2de3f88f751e203c4ce65965d97249e5e0f642d"
  head "https://github.com/swim2sun/migu-music-dl.git"

  # TODO: If you're submitting an existing package, make sure you include your
  #       bottle block here.

  depends_on "python@3.8"

  resource "click" do
    url "https://files.pythonhosted.org/packages/f4/09/ad003f1e3428017d1c3da4ccc9547591703ffea548626f47ec74509c5824/click-8.0.3.tar.gz#sha256=410e932b050f5eed773c4cda94de75971c89cdb3155a72a0831139a79e5ecb5b"
    sha256 "410e932b050f5eed773c4cda94de75971c89cdb3155a72a0831139a79e5ecb5b"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/59/7c/e39aca596badaf1b78e8f547c807b04dae603a433d3e7a7e04d67f2ef3e5/wcwidth-0.2.5-py2.py3-none-any.whl#sha256=beb4802a9cebb9144e99086eff703a642a13d6a0052920003a230f3294bbe784"
    sha256 "beb4802a9cebb9144e99086eff703a642a13d6a0052920003a230f3294bbe784"
  end

  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/71/19/d65d4c39aa12a5630a8aa02ead8324cfaae3217146b19dd25d88d763bbdf/prettytable-3.0.0.tar.gz#sha256=69fe75d78ac8651e16dd61265b9e19626df5d630ae294fc31687aa6037b97a58"
    sha256 "69fe75d78ac8651e16dd61265b9e19626df5d630ae294fc31687aa6037b97a58"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/37/45/946c02767aabb873146011e665728b680884cd8fe70dde973c640e45b775/certifi-2021.10.8-py2.py3-none-any.whl#sha256=d62a0163eb4c2344ac042ab2bdf75399a71a2d8c7d47eac2e2ee91b9d6339569"
    sha256 "d62a0163eb4c2344ac042ab2bdf75399a71a2d8c7d47eac2e2ee91b9d6339569"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/48/44/76b179e0d1afe6e6a91fd5661c284f60238987f3b42b676d141d01cd5b97/charset-normalizer-2.0.10.tar.gz#sha256=876d180e9d7432c5d1dfd4c5d26b72f099d503e8fcc0feb7532c9289be60fcbd"
    sha256 "876d180e9d7432c5d1dfd4c5d26b72f099d503e8fcc0feb7532c9289be60fcbd"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz#sha256=9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
    sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/4e/b8/f5a25b22e803f0578e668daa33ba3701bb37858ec80e08a150bd7d2cf1b1/urllib3-1.26.8-py2.py3-none-any.whl#sha256=000ca7f471a233c2251c6c7023ee85305721bfdf18621ebff4fd17a8653427ed"
    sha256 "000ca7f471a233c2251c6c7023ee85305721bfdf18621ebff4fd17a8653427ed"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"migu-music-dl", "--help"
  end
end