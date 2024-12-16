#ifndef MAIN_WINDOW_H
#define MAIN_WINDOW_H

#include <QMainWindow>


class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow( QWidget* parent = nullptr );
    ~MainWindow( void );

public slots:
    void show( void );

protected:
    void showEvent( QShowEvent* event ) override;
};

#endif // MAIN_WINDOW_H
