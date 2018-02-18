#-------------------------------------------------
#
# Project created by QtCreator 2013-09-03T10:32:27
#
#-------------------------------------------------

QT       += core gui sql

#-------------------------------------------------
# Kopiowanie pliku bazy danych
#-------------------------------------------------
    win32 {
        COPY_FROM_PATH=$$shell_path($$PWD/isotopes)
        COPY_TO_PATH=$$shell_path($$OUT_PWD/isotopes)
    }
    else {
        COPY_FROM_PATH=$$PWD/isotopes
        COPY_TO_PATH=$$OUT_PWD/isotopes
    }
    copydata.commands = $(COPY_DIR) $$COPY_FROM_PATH $$COPY_TO_PATH
    first.depends = $(first) copydata
    export(first.depends)
    export(copydata.commands)
    QMAKE_EXTRA_TARGETS += first copydata


greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = jak
TEMPLATE = app


SOURCES += main.cpp\
    mainwindow.cpp \
    mainwidget.cpp \
    isotopeaction.cpp \
    isotopesdiagramview.cpp \
    isotopesview.cpp \
    isotopesgraphview.cpp \
    isotopediagramitem.cpp \
    isotopewidget.cpp \
    selectedisotopelabel.cpp

HEADERS  += mainwindow.h \
    mainwidget.h \
    isotopeaction.h \
    isotopesdiagramview.h \
    isotopesview.h \
    isotopesgraphview.h \
    isotopediagramitem.h \
    isotopewidget.h \
    selectedisotopelabel.h

RESOURCES += \
    MyResources.qrc

DISTFILES += \
    isotopes/isotopes.db \
    images/folder.png \
    images/left.png \
    images/logo.png \
    images/right.png
