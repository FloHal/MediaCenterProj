#include "MainMenu.h"



MainMenu::MainMenu(QQuickItem *root, QObject *parent)
    : QObject(parent)
{
    m_root = root;
    m_quitButton = NULL;
    m_videoButton = NULL;
    m_musicButton = NULL;
    m_settingsButton = NULL;
}


void MainMenu::start()
{
    m_quitButton = m_root->findChild<QObject*>("quitButton");
    m_videoButton = m_root->findChild<QObject*>("videoButton");

    m_videoView = m_root->findChild<QObject*>("evideoview");
    if(m_quitButton)
    {
        QObject::connect(m_quitButton, SIGNAL(eclicked()), qApp, SLOT(quit()));
    }
    if(m_videoButton)
        QObject::connect(m_videoButton, SIGNAL(eclicked()), this, SLOT(showVideo()));
}

void MainMenu::showVideo()
{
    if(m_videoView)
    {
        if(m_videoView->property("state") == "defaut")
            m_videoView->setProperty("state", "hover");
        else
            m_videoView->setProperty("state", "defaut");
    }
}
