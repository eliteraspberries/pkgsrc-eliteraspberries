# $NetBSD$

LUAJIT_BASEVER=	2.0
LUAJIT_VERSION=	${LUAJIT_BASEVER}.5

DISTNAME=	LuaJIT-${LUAJIT_VERSION}
PKGNAME=	${DISTNAME:tl}
CATEGORIES=	lang
MASTER_SITES=	http://luajit.org/download/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://luajit.org/
COMMENT=	Lua Just-In-Time Compiler
LICENSE=	mit

USE_LANGUAGES=	c
USE_TOOLS+=	gmake pkg-config

PKGCONFIG_OVERRIDE+=	etc/luajit.pc

BUILD_MAKE_FLAGS+=	PREFIX=${PREFIX}
INSTALL_MAKE_FLAGS+=	PREFIX=${PREFIX}
INSTALL_MAKE_FLAGS+=	DESTDIR=${DESTDIR}
INSTALL_MAKE_FLAGS+=	INSTALL_MAN=${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

PLIST_SUBST+=	LUAJIT_BASEVER=${LUAJIT_BASEVER}
PLIST_SUBST+=	LUAJIT_VERSION=${LUAJIT_VERSION}

.include "../../mk/bsd.pkg.mk"
