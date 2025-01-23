#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QQmlEngine>
#include <QString>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QDebug>

class Backend : public QObject {
    Q_OBJECT
public:
    explicit Backend(QObject *parent = nullptr);

    Q_INVOKABLE void fetchComponent(const QString &componentName, const QString &url);

signals:
    void componentFetched(const QString &componentName, const QString &qmlContent);
    void componentFetchFailed(const QString &componentName, const QString &error);

private:
    QNetworkAccessManager *networkManager;
};


#endif // BACKEND_H
