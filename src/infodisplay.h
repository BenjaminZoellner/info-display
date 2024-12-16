#ifndef INFO_DISPLAY_H
#define INFO_DISPLAY_H

#include <QWidget>


namespace Ui
{
    class InfoDisplay;
}


class InfoDisplay : public QWidget
{
    Q_OBJECT

public:
    explicit InfoDisplay( QWidget* parent = nullptr );
    virtual ~InfoDisplay( void );

private:
    Ui::InfoDisplay* ui;
};

#endif // INFO_DISPLAY_H
