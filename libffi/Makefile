# $NetBSD$

DISTNAME=	libffi-3.2.1
PKGREVISION=	3
CATEGORIES=	devel
MASTER_SITES=	ftp://sourceware.org/pub/libffi/

MAINTAINER=	mansourmoufid@gmail.com
HOMEPAGE=	http://sourceware.org/libffi/
COMMENT=	Portable Foreign Function Interface library
LICENSE=	modified-bsd

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c

PKGCONFIG_OVERRIDE+=	libffi.pc.in

SPATCH=		no

CONFIGURE_ARGS+=	--includedir=${PREFIX}/include
CONFIGURE_ARGS+=	--disable-shared
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--with-pic
CONFIGURE_ARGS+=	--enable-portable-binary

.include "../../mk/bsd.pkg.mk"
