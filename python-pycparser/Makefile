# $NetBSD$

GITHUB_PROJECT=	pycparser
DISTNAME=	release_v2.19
PKGNAME=	python-${GITHUB_PROJECT}-${DISTNAME:S/release_v//}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=eliben/pycparser/archive/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	${MASTER_SITE_GITHUB:=eliben/pycparser/}
COMMENT=	Complete C99 parser in pure Python
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/${GITHUB_PROJECT}-${DISTNAME}

.include "../../eliteraspberries/python/buildlink3.mk"
.include "../../eliteraspberries/python/setuppy.mk"
.include "../../eliteraspberries/python-setuptools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
