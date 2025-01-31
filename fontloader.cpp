#include "fontloader.h"
#include "qdebug.h"

FontLoader::FontLoader(QObject *parent):  QObject(parent)
{
    loadFonts();
}

void FontLoader::loadFonts()
{
    QStringList fontPaths = {
        ":/Poppins-ExtraBold.ttf",
        ":/Poppins-Bold.ttf",
        ":/Poppins-Medium.ttf",
        ":/Poppins-Regular.ttf"
    };

    QString* fontRefs[] = { &m_black, &m_bold, &m_medium, &m_regular };

    for (int i = 0; i < fontPaths.size(); ++i) {
        int fontId = QFontDatabase::addApplicationFont(fontPaths[i]);
        if (fontId == -1) {
            qWarning() << "Failed to load font:" << fontPaths[i];
        } else {
            QStringList families = QFontDatabase::applicationFontFamilies(fontId);
            if (!families.isEmpty()) {
                *fontRefs[i] = families.first();
                qDebug() << "Loaded font:" << *fontRefs[i];
            }
        }
    }
}
