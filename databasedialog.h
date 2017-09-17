#ifndef DATABASEDIALOG_H
#define DATABASEDIALOG_H

#include <QDialog>
#include <QLabel>
#include <QPushButton>
#include <QLineEdit>
#include <QFileDialog>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QIcon>
#include <QString>

class DatabaseDialog : public QDialog
{
    Q_OBJECT

public:
    explicit DatabaseDialog(QWidget* = 0);

private slots:
    void databaseChange();

private:
    bool isDatabaseOk(QString);
    QLabel* databaseInfo;
    QLineEdit* databaseName;
    QPushButton* acceptButton;
    QPushButton* rejectButton;
};

#endif // DATABASEDIALOG_H
