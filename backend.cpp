#include "backend.h"

Backend::Backend(QObject *parent)
    : QObject(parent) {
    networkManager = new QNetworkAccessManager(this);
}

void Backend::fetchComponent(const QString &componentName, const QString &url) {
    QNetworkRequest request((QUrl(url)));
    QNetworkReply* reply = networkManager->get(request);

    connect(reply, &QNetworkReply::finished, this, [this, reply, componentName]() {
        if (reply->error() == QNetworkReply::NoError) {
            QString qmlContent = QString::fromUtf8(reply->readAll());
            emit componentFetched(componentName, qmlContent);
        } else {
            qWarning() << "Failed to fetch QML:" << reply->errorString();
            emit componentFetchFailed(componentName, reply->errorString());
        }
        reply->deleteLater();
    });
}
