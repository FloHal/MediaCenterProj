#include "VideoView.h"


VideoView::VideoView(QObject *parent)
    : QObject(parent)
{
    m_view = parent->findChild<QObject*>("evideoview");

    QObject::connect(m_view, SIGNAL(qmlClicked()), this, SLOT(openVideo()));
}


void VideoView::openVideo()
{
    qDebug() << "Open a video";
    QString filename = QFileDialog::getOpenFileName(NULL, "Open video", "/home/flo", "Video Files (*.avi *.mp4)");
    if(!filename.isEmpty())
    {
        m_view->setProperty("source", QUrl::fromLocalFile(filename));
        filename = filename.mid(filename.lastIndexOf("/") + 1);
        m_view->setProperty("text", filename);
        QObject* videoObj = m_view->findChild<QObject*>("video");
        QMetaObject::invokeMethod(videoObj, "play");
    }
}
