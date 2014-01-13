#include <QtGui/QGuiApplication>
#include <QApplication>
#include <QQuickItem>
#include "MainProcess.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    MainProcess mainProc("qml/EnlightMediaCenter/main.qml");
    mainProc.start(false);

    return app.exec();
}
