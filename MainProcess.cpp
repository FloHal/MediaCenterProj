#include "MainProcess.h"





MainProcess::MainProcess(QString viewpath, QObject *parent)
   : QObject(parent)
{
    m_view = new QQuickView();
    m_view->setSource(QUrl(viewpath));
    m_view->setResizeMode(m_view->SizeRootObjectToView);
}


void MainProcess::defineMainView(QQuickView *view)
{
    m_view = view;
}

void MainProcess::start(bool fullscreen)
{
    if(fullscreen)
        m_view->showFullScreen();
    else
        m_view->show();

    m_root = m_view->rootObject();
    m_mainmenu = new MainMenu(m_root);
    m_videoView = new VideoView(m_root);

    m_mainmenu->start();


}

