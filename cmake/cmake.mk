# $NetBSD$

.if !defined(CMAKE_MK)
CMAKE_MK:=

.if empty(PKG_OPTIONS:Mdebug)
CMAKE_ARGS+=	-DCMAKE_BUILD_TYPE=Release
.else
CMAKE_ARGS+=	-DCMAKE_BUILD_TYPE=Debug
CMAKE_ARGS+=	-DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
.endif
CMAKE_ARGS+=	-DCMAKE_C_FLAGS="${CFLAGS}"
CMAKE_ARGS+=	-DCMAKE_CXX_FLAGS="${CXXFLAGS}"
CMAKE_ARGS+=	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}"
CMAKE_ARGS+=	-DCMAKE_INSTALL_PREFIX="${PREFIX}"
CMAKE_ARGS+=	-DCMAKE_BUILD_RPATH="${PREFIX}"
# CMAKE_ARGS+=	-DCMAKE_INSTALL_RPATH="${PREFIX}"

CMAKE_DIR=			build

do-configure:
	mkdir -p ${WRKSRC}/${CMAKE_DIR}
	cd ${WRKSRC}/${CMAKE_DIR} && env ${MAKE_ENV} cmake ${CMAKE_ARGS} ..

BUILD_DIRS=			${CMAKE_DIR}

do-install:
	cd ${WRKSRC}/${CMAKE_DIR} && \
	env ${MAKE_ENV} DESTDIR=${DESTDIR} cmake --install .

.endif # CMAKE_MK