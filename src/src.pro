#-------------------------------------------------
#
# Project created by QtCreator 2018-03-15T15:12:26
#
#-------------------------------------------------

# Get environment variables
QT       += core gui network svg widgets concurrent multimedia multimediawidgets

TARGET = info-display
TEMPLATE = app

DEFINES += QT_MESSAGELOGCONTEXT

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += BOOST_MATH_DISABLE_FLOAT128
CONFIG += c++17
# QMAKE_CXXFLAGS += -lstdc++fs
QMAKE_CXXFLAGS += -Werror

CONFIG += force_debug_info
# remove possible other optimization flags
QMAKE_CXXFLAGS_RELEASE -= -O0
QMAKE_CXXFLAGS_RELEASE -= -O1
QMAKE_CXXFLAGS_RELEASE -= -O2

# add the desired -O3 if not present
QMAKE_CXXFLAGS_RELEASE *= -O3
# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

DESTDIR = ../bin
MOC_DIR = ../build/moc
RCC_DIR = ../build/rcc
UI_DIR = ../build/ui
unix:OBJECTS_DIR = ../build/o/unix
win32:OBJECTS_DIR = ../build/o/win32
macx:OBJECTS_DIR = ../build/o/mac

# parameters: var, prepend, append
defineReplace(prependAll) {
    for(a,$$1):result += $$2$${a}$$3
    return($$result)
}

INCLUDEPATH += \
    .

SOURCES += \
    $$prependAll(INCLUDEPATH, , /*.cpp)

HEADERS += \
    $$prependAll(INCLUDEPATH, , /*.h)

FORMS += \
    $$prependAll(INCLUDEPATH, , /*.ui)

unix {
    target.path = /usr/bin
    INSTALLS += target

    DEFINES += CONST_EXPR=constexpr
}

#RESOURCES += \
#    ressource.qrc

win32 {
    DEFINES += CONST_EXPR=
}

