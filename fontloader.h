#ifndef FONTLOADER_H
#define FONTLOADER_H

#include <QObject>
#include <QFontDatabase>

class FontLoader : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString black READ black CONSTANT)
    Q_PROPERTY(QString bold READ bold CONSTANT)
    Q_PROPERTY(QString medium READ medium CONSTANT)
    Q_PROPERTY(QString regular READ regular CONSTANT)

public:
    explicit FontLoader(QObject *parent = nullptr);

    void loadFonts();

    QString black() const { return m_black; }
    QString bold() const { return m_bold; }
    QString medium() const { return m_medium; }
    QString regular() const { return m_regular; }

private:
    QString m_black, m_bold, m_medium, m_regular;
};

#endif // FONTLOADER_H
