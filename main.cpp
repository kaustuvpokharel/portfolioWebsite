#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "colorlist.h"
#include "emailsender.h"
#include "fontloader.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qputenv("QT_SCALE_FACTOR", "1");

    //Source files registered to connection into QML:
    qmlRegisterType<ColorList>("com.colors", 1, 0, "ColorList");
    qmlRegisterType<EmailSender>("com.email", 1, 0, "EmailSender");
    qmlRegisterType<FontLoader>("com.font", 1, 0, "FontLoad");

    const QUrl url(u"qrc:/KaustuvPokharel/main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
