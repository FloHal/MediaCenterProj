#ifndef MAINPROCESS_H
#define MAINPROCESS_H


#include <QObject>
#include <QQuickView>
#include "MainMenu.h"
#include "VideoView.h"

class MainProcess : public QObject
{
    Q_OBJECT
public:
    MainProcess(QString viewpath,QObject *parent = NULL);
    void defineMainView(QQuickView *view);
    void start(bool fullscreen = false);


private:
    QQuickView *m_view;
    QQuickItem *m_root;
    MainMenu   *m_mainmenu;
    VideoView  *m_videoView;

};









#endif // MAINPROCESS_H
