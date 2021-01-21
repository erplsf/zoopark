# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

DESCRIPTION="Input: Fonts for Code"
HOMEPAGE="https://input.fontbureau.com"
SRC_URI="https://input.fontbureau.com/build/?fontSelection=whole&a=0&g=0&i=0&l=0&zero=0&asterisk=0&braces=0&preset=default&line-height=1.2&accept=I+do -> ${P}.zip"

LICENSE="INPUT-FSLA"
SLOT="0"

KEYWORDS="~amd64"

BDEPEND="app-arch/unzip"
FONT_SUFFIX="ttf"

S="${DISTDIR}"
FONT_S="${WORKDIR}/fonts"

src_prepare() {
	default

	mkdir -p "${WORKDIR}/fonts" || die
	pushd "${WORKDIR}"
	find * -type f -name "*.ttf" -print | xargs -n1 -i sh -c 'v="{}"; mv ${v} ${WORKDIR}/fonts/${v##*/}' || die
	popd
}
