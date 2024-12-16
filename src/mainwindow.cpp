#include "mainwindow.h"


MainWindow::MainWindow( QWidget* parent ) :
    QMainWindow( parent )
{
    this->setStyleSheet( "QMainWindow { background-color: rgb(21,21,21); }" );
    this->setWindowTitle( MainWindow::tr( "Info Display" ) );

    this->setMinimumSize( 50,  50  );
    this->setMaximumSize( 500, 500 );
}

MainWindow::~MainWindow( void )
{
}

void MainWindow::show( void )
{
    this->QMainWindow::show();
    this->resize( 500, 500 );
}

void MainWindow::showEvent( QShowEvent* event )
{
    this->QMainWindow::showEvent( event );
}
