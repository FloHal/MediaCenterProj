#ifndef VIDEOVIEW_H
#define VIDEOVIEW_H


#include <QObject>
#include <QDebug>
#include <QtWidgets/QFileDialog>
#include <QUrl>

class VideoView : public QObject
{
    Q_OBJECT
public :
    VideoView(QObject *parent = NULL);
private slots:
    void openVideo();

private:
    QObject         *m_view;
    QObject         *m_openButton;
};




#endif // VIDEOVIEW_H
