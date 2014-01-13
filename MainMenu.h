#ifndef MAINMENU_H
#define MAINMENU_H

#include <QObject>
#include <QQuickItem>

class MainMenu : public QObject
{
    Q_OBJECT
public:
    MainMenu(QQuickItem *root, QObject *parent = NULL);
    void start();
private slots:
    void showVideo();
    void showMusic();
    void showImage();
    void showSettings();

private:
    QQuickItem          *m_root;
    QObject             *m_quitButton;
    QObject             *m_videoButton;
    QObject             *m_musicButton;
    QObject             *m_imageButton;
    QObject             *m_settingsButton;

    QObject             *m_videoView;
    QObject             *m_musicView;
    QObject             *m_settingsView;
    QObject             *m_imageView;
};



#endif // MAINMENU_H
