#ifndef FONTLOADER_H
#define FONTLOADER_H

#include <QObject>

class FontLoader
{
    Q_OBJECT
    Q_PROPERTY(QString black READ black CONSTANT)
    Q_PROPERTY(QString bold READ bold CONSTANT)
    Q_PROPERTY(QString medium READ medium CONSTANT)
    Q_PROPERTY(QString mediumItalic READ mediumItalic CONSTANT)
    Q_PROPERTY(QString regular READ regular CONSTANT)
public:
    FontLoader();

};

#endif // FONTLOADER_H
