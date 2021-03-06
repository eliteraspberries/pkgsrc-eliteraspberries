# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.coccinelle
PKG_SUPPORTED_OPTIONS=	python
PKG_SUGGESTED_OPTIONS=	#
PLIST_VARS+=		python

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mpython)
CONFIGURE_ARGS+=	--enable-python
PLIST.python=		yes
.include "../../eliteraspberries/python/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-python
.endif
