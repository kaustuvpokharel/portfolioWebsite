#include "emailsender.h"

EmailSender::EmailSender(QObject *parent)
    : QObject{parent}
{
    manager = new QNetworkAccessManager(this);
}

void EmailSender::sendEmail(const QString &name, const QString &email, const QString &subject, const QString &message)
{
    /**
 * @brief Sends an email with the provided details to the backend server.
 *
 * This function constructs a JSON payload containing the sender's name, email, subject,
 * and message, and sends it to the specified backend URL using a POST request.
 * The function logs whether the email was sent successfully or if it failed.
 *
 * @param name The sender's name from QMl.
 * @param email The sender's email QmL.
 * @param subject The subject of the email from QML.
 * @param message The body content of the email from QML.
 *
 * @note The backend URL must be set in the QUrl initialization for the request to function properly.
 *
 * @warning Ensure that the QNetworkAccessManager pointer `manager` is properly initialized
 *          before calling this function to avoid runtime errors.
 *
 * @example
 * EmailSender sender;
 * sender.sendEmail("Kaustuv Pokharel", "kastuvpokharel@example.com", "Test Subject", "This is a test message.");
 */

    QUrl url("https://kaustuv-backend.vaskrneup.com/email/send-email/");  //Need to add the Backend Url
    QNetworkRequest request(url);
    request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json; charset=utf-8");

    QJsonObject json;
    json["name"] = name;
    json["email"] = email;
    json["subject"] = subject;
    json["message"] = message;
    qDebug() << "Name: "<< name << "Email: " << email << "subject: " << subject;

    QNetworkReply *reply = manager->post(request, QJsonDocument(json).toJson());
    connect(reply, &QNetworkReply::finished, this, [reply]() {
        if (reply->error() == QNetworkReply::NoError) {
            qDebug() << "Email sent successfully!";

        } else {
            qDebug() << "Failed to send email:" << reply->errorString();
        }
        reply->deleteLater();
    });
}
