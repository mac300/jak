#-------------------------------------------------
#
# Project created by QtCreator 2013-09-03T10:32:27
#
#-------------------------------------------------

QT       += core gui sql

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
    selectedisotopelabel.cpp \
    databasedialog.cpp

HEADERS  += mainwindow.h \
    mainwidget.h \
    isotopeaction.h \
    isotopesdiagramview.h \
    isotopesview.h \
    isotopesgraphview.h \
    isotopediagramitem.h \
    isotopewidget.h \
    selectedisotopelabel.h \
    databasedialog.h

RESOURCES += \
    MyResources.qrc
