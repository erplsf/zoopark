# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

DESCRIPTION="Meslo Nerd Font patched for Powerlevel10k by romkatv"
HOMEPAGE="https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k"
SRC_URI="
	https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
	https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
	https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
	https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
"

LICENSE="Apache-2.0"
SLOT="0"

KEYWORDS="~amd64"

FONT_SUFFIX="ttf"

S="${DISTDIR}"
