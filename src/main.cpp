#include <QApplication>
#include <QMainWindow>

#include "infodisplay.h"
#include "mainwindow.h"


int main(int argc, char *argv[])
{
    QApplication app( argc, argv );

    MainWindow mainWindow;
    mainWindow.show();

    if (0 > app.arguments().indexOf("-style", Qt::CaseSensitivity::CaseInsensitive))
    {
        // Use fusion style when not set explicit from outside
        app.setStyle("Fusion");
    }

    InfoDisplay InfoDisplay( &mainWindow );
    mainWindow.setCentralWidget( &InfoDisplay );

    return app.exec();
}
