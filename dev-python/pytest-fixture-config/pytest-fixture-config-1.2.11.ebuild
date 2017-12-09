# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6} pypy{,3} )

inherit distutils-r1

DESCRIPTION="Virtualenv fixture for py.test"
HOMEPAGE="https://github.com/manahl/pytest-plugins https://pypi.python.org/pypi/pytest-fixture-config"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~mips ~ppc ~ppc64 ~x86"
IUSE="test"

RDEPEND="
	dev-python/pytest[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools-git[${PYTHON_USEDEP}]
	test? (
		${RDEPEND}
		dev-python/six[${PYTHON_USEDEP}]
	)
"

python_test() {
	esetup.py test
}