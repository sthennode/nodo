########################################################################
# Copyright (c) 1988-2021 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: nodo.pri
#
# Author: $author$
#   Date: 6/6/2021
#
# Os specific QtCreator .pri file for nodo
########################################################################
UNAME = $$system(uname)

contains(UNAME,Darwin) {
NODO_OS = macosx
} else {
contains(UNAME,Linux) {
NODO_OS = linux
} else {
NODO_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(BUILD_OS,NODO_OS) {
NODO_BUILD = $${NODO_OS}
} else {
NODO_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,NODO_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(NODO_OS,macosx) {
} else {
contains(NODO_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(NODO_OS,windows) {
} else {
} # contains(NODO_OS,windows)
} # contains(NODO_OS,linux)
} # contains(NODO_OS,macosx)

########################################################################
# rostra
ROSTRA_THIRDPARTY_PKG_MAKE_BLD = $${ROSTRA_THIRDPARTY_PKG}/build/$${NODO_BUILD}/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${ROSTRA_THIRDPARTY_PRJ}/build/$${NODO_BUILD}/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PKG_BLD = $${ROSTRA_THIRDPARTY_PKG}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${ROSTRA_THIRDPARTY_PRJ}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_PKG_BLD = $${OTHER_BLD}/$${ROSTRA_PKG}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_PRJ_BLD = $${OTHER_BLD}/$${ROSTRA_PRJ}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PKG_MAKE_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PKG_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PRJ_BLD}/lib
ROSTRA_LIB = $${ROSTRA_PKG_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_PRJ_BLD}/lib
#ROSTRA_LIB = $${NODO_LIB}

# rostra LIBS
#
rostra_LIBS += \
-L$${ROSTRA_LIB}/lib$${ROSTRA_NAME} \
-l$${ROSTRA_NAME} \

########################################################################
# nadir
NADIR_THIRDPARTY_PKG_MAKE_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${NODO_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${NODO_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PKG_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PKG_BLD = $${OTHER_BLD}/$${NADIR_PKG}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PRJ_BLD = $${OTHER_BLD}/$${NADIR_PRJ}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_BLD}/lib
NADIR_LIB = $${NADIR_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_PRJ_BLD}/lib
#NADIR_LIB = $${NODO_LIB}

# nadir LIBS
#
nadir_LIBS += \
-L$${NADIR_LIB}/lib$${NADIR_NAME} \
-l$${NADIR_NAME} \

########################################################################
# fila
FILA_THIRDPARTY_PKG_MAKE_BLD = $${FILA_THIRDPARTY_PKG}/build/$${NODO_BUILD}/$${BUILD_CONFIG}
FILA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${FILA_THIRDPARTY_PRJ}/build/$${NODO_BUILD}/$${BUILD_CONFIG}
FILA_THIRDPARTY_PKG_BLD = $${FILA_THIRDPARTY_PKG}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
FILA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${FILA_THIRDPARTY_PRJ}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
FILA_PKG_BLD = $${OTHER_BLD}/$${FILA_PKG}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
FILA_PRJ_BLD = $${OTHER_BLD}/$${FILA_PRJ}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
#FILA_LIB = $${FILA_THIRDPARTY_PKG_MAKE_BLD}/lib
#FILA_LIB = $${FILA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#FILA_LIB = $${FILA_THIRDPARTY_PKG_BLD}/lib
#FILA_LIB = $${FILA_THIRDPARTY_PRJ_BLD}/lib
FILA_LIB = $${FILA_PKG_BLD}/lib
#FILA_LIB = $${FILA_PRJ_BLD}/lib
#FILA_LIB = $${NODO_LIB}

# fila LIBS
#
fila_LIBS += \
-L$${FILA_LIB}/lib$${FILA_NAME} \
-l$${FILA_NAME} \

########################################################################
# crono
CRONO_THIRDPARTY_PKG_MAKE_BLD = $${CRONO_THIRDPARTY_PKG}/build/$${NODO_BUILD}/$${BUILD_CONFIG}
CRONO_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${CRONO_THIRDPARTY_PRJ}/build/$${NODO_BUILD}/$${BUILD_CONFIG}
CRONO_THIRDPARTY_PKG_BLD = $${CRONO_THIRDPARTY_PKG}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
CRONO_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${CRONO_THIRDPARTY_PRJ}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
CRONO_PKG_BLD = $${OTHER_BLD}/$${CRONO_PKG}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
CRONO_PRJ_BLD = $${OTHER_BLD}/$${CRONO_PRJ}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
#CRONO_LIB = $${CRONO_THIRDPARTY_PKG_MAKE_BLD}/lib
#CRONO_LIB = $${CRONO_THIRDPARTY_PRJ_MAKE_BLD}/lib
#CRONO_LIB = $${CRONO_THIRDPARTY_PKG_BLD}/lib
#CRONO_LIB = $${CRONO_THIRDPARTY_PRJ_BLD}/lib
CRONO_LIB = $${CRONO_PKG_BLD}/lib
#CRONO_LIB = $${CRONO_PRJ_BLD}/lib
#CRONO_LIB = $${NODO_LIB}

# crono LIBS
#
crono_LIBS += \
-L$${CRONO_LIB}/lib$${CRONO_NAME} \
-l$${CRONO_NAME} \

########################################################################
# rete
RETE_THIRDPARTY_PKG_MAKE_BLD = $${RETE_THIRDPARTY_PKG}/build/$${NODO_BUILD}/$${BUILD_CONFIG}
RETE_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${RETE_THIRDPARTY_PRJ}/build/$${NODO_BUILD}/$${BUILD_CONFIG}
RETE_THIRDPARTY_PKG_BLD = $${RETE_THIRDPARTY_PKG}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
RETE_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${RETE_THIRDPARTY_PRJ}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
RETE_PKG_BLD = $${OTHER_BLD}/$${RETE_PKG}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
RETE_PRJ_BLD = $${OTHER_BLD}/$${RETE_PRJ}/build/$${NODO_BUILD}/QtCreator/$${BUILD_CONFIG}
#RETE_LIB = $${RETE_THIRDPARTY_PKG_MAKE_BLD}/lib
#RETE_LIB = $${RETE_THIRDPARTY_PRJ_MAKE_BLD}/lib
#RETE_LIB = $${RETE_THIRDPARTY_PKG_BLD}/lib
#RETE_LIB = $${RETE_THIRDPARTY_PRJ_BLD}/lib
RETE_LIB = $${RETE_PKG_BLD}/lib
#RETE_LIB = $${RETE_PRJ_BLD}/lib
#RETE_LIB = $${NODO_LIB}

# rete LIBS
#
rete_LIBS += \
-L$${RETE_LIB}/lib$${RETE_NAME} \
-l$${RETE_NAME} \

########################################################################
# nodo

# nodo INCLUDEPATH
#
nodo_INCLUDEPATH += \

# nodo DEFINES
#
nodo_DEFINES += \

# nodo LIBS
#
nodo_LIBS += \
$${rete_LIBS} \
$${crono_LIBS} \
$${fila_LIBS} \
$${nadir_LIBS} \
$${rostra_LIBS} \
$${build_nodo_LIBS} \

contains(NODO_OS,macosx|linux) {
nodo_LIBS += \
-lpthread \
-ldl
} else {
} # contains(NODO_OS,macosx|linux)

contains(NODO_OS,linux) {
nodo_LIBS += \
-lrt
} else {
} # contains(NODO_OS,linux)


