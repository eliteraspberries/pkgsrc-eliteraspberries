# $NetBSD$

BUILDLINK_TREE+= python35

.if !defined(PYTHON35_BUILDLINK3_MK)
PYTHON35_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python35+= python35>=7
BUILDLINK_PKGSRCDIR.python35?= ../../eliteraspberries/python35

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../eliteraspberries/libffi/buildlink3.mk"
.include "../../eliteraspberries/ncurses/buildlink3.mk"
.include "../../eliteraspberries/readline/buildlink3.mk"
.include "../../eliteraspberries/tcl/buildlink3.mk"
.include "../../eliteraspberries/tk/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"

BUILDLINK_INCDIRS.python35+= include/python3.5

.endif # PYTHON35_BUILDLINK3_MK

BUILDLINK_TREE+= -python35
