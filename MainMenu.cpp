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
    m_imageButton = m_root->findChild<QObject*>("imageButton");
    m_musicButton = m_root->findChild<QObject*>("musicButton");
    m_settingsButton = m_root->findChild<QObject*>("settingsButton");

    m_videoView = m_root->findChild<QObject*>("evideoview");
    m_musicView = m_root->findChild<QObject*>("emusicview");
    m_imageView = m_root->findChild<QObject*>("eimageview");
    m_settingsView = m_root->findChild<QObject*>("esettingsview");


    if(m_quitButton)
    {
        QObject::connect(m_quitButton, SIGNAL(eclicked()), qApp, SLOT(quit()));
    }
    if(m_videoButton)
        QObject::connect(m_videoButton, SIGNAL(eclicked()), this, SLOT(showVideo()));
    if(m_imageButton)
        QObject::connect(m_imageButton, SIGNAL(eclicked()), this, SLOT(showImage()));
    if(m_musicButton)
        QObject::connect(m_musicButton, SIGNAL(eclicked()), this, SLOT(showMusic()));
    if(m_settingsButton)
        QObject::connect(m_settingsButton, SIGNAL(eclicked()), this, SLOT(showSettings()));

}

void MainMenu::showVideo()
{
    if(m_videoView)
    {
        if(m_videoView->property("state") == "defaut")
        {
            m_videoView->setProperty("state", "hover");
            m_musicView->setProperty("state", "defaut");
            m_imageView->setProperty("state", "defaut");
            m_settingsView->setProperty("state", "defaut");
        }
        else
            m_videoView->setProperty("state", "defaut");
    }
}

void MainMenu::showImage()
{
    if(m_imageView)
    {
        if(m_imageView->property("state") == "defaut")
        {
            m_videoView->setProperty("state", "defaut");
            m_musicView->setProperty("state", "defaut");
            m_imageView->setProperty("state", "hover");
            m_settingsView->setProperty("state", "defaut");
        }
        else
            m_imageView->setProperty("state", "defaut");
    }
}

void MainMenu::showMusic()
{
    if(m_musicView)
    {
        if(m_musicView->property("state") == "defaut")
        {
            m_videoView->setProperty("state", "defaut");
            m_musicView->setProperty("state", "hover");
            m_imageView->setProperty("state", "defaut");
            m_settingsView->setProperty("state", "defaut");
        }
        else
            m_musicView->setProperty("state", "defaut");
    }
}

void MainMenu::showSettings()
{
    if(m_settingsView)
    {
        if(m_settingsView->property("state") == "defaut")
        {
            m_videoView->setProperty("state", "defaut");
            m_musicView->setProperty("state", "defaut");
            m_imageView->setProperty("state", "defaut");
            m_settingsView->setProperty("state", "hover");
        }
        else
            m_settingsView->setProperty("state", "defaut");
    }
}
