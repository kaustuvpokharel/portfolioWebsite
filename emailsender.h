#ifndef EMAILSENDER_H
#define EMAILSENDER_H

#include <QObject>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QJsonDocument>
#include <QJsonObject>

class EmailSender : public QObject
{
    Q_OBJECT
public:
    explicit EmailSender(QObject *parent = nullptr);

    Q_INVOKABLE void sendEmail(const QString &name, const QString &email, const QString &subject, const QString &message);

private:
    QNetworkAccessManager *manager;
signals:
};

#endif // EMAILSENDER_H
