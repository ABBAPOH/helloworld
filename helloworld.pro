#-------------------------------------------------
#
# Project created by QtCreator 2015-08-08T16:57:37
#
#-------------------------------------------------

QT       += core gui widgets

macx {
    TARGET = HelloWorld
} else {
    TARGET = helloworld
}

TEMPLATE = app

SOURCES += main.cpp\
        mainwindow.cpp
HEADERS  += mainwindow.h
FORMS    += mainwindow.ui
