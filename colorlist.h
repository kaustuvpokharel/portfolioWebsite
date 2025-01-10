#ifndef COLORLIST_H
#define COLORLIST_H

#include <QObject>
#include <map>
#include <stdexcept>

class ColorList : public QObject
{
    Q_OBJECT
private:
    //List of color used in the web-application
    std::map<std::string, std::string> colorList =
    {
        {"white", "#F2F2F2"},
        {"black", "#151312"},
        {"neon", "#D0FD5A"},
        {"gray", "#353334"}
    };

public:

    explicit ColorList(QObject *parent = nullptr);

    //Invokable function inside QML
    Q_INVOKABLE QString color(QString cName) const;

    ~ColorList() = default;

signals:
};

#endif // COLORLIST_H
