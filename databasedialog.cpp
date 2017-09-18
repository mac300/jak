#include "databasedialog.h"

DatabaseDialog::DatabaseDialog(QWidget* parent) :
    QDialog(parent)
{
    this->setMinimumWidth(600);
    QVBoxLayout* mainLayout=new QVBoxLayout(this);
    this->databaseInfo=new QLabel(tr("Connect to isotopes.db"));
    mainLayout->addWidget(this->databaseInfo);

    QHBoxLayout* databaseNameLayout=new QHBoxLayout;
    this->databaseName=new QLineEdit(tr("../jak/isotopes.db"));
    QPushButton* databaseFileButton=new QPushButton(QIcon(tr(":/icons/folder.png")),"");
    databaseNameLayout->addWidget(this->databaseName);
    databaseNameLayout->addWidget(databaseFileButton);
    mainLayout->addLayout(databaseNameLayout);


    QHBoxLayout* buttonLayout=new QHBoxLayout;
    this->acceptButton=new QPushButton(tr("Accept"));
    this->acceptButton->setDefault(true);
    this->rejectButton=new QPushButton(tr("Reject"));
    buttonLayout->addWidget(this->acceptButton);
    buttonLayout->addWidget(this->rejectButton);
    mainLayout->addLayout(buttonLayout);

    connect(databaseFileButton,SIGNAL(clicked()),this,SLOT(databaseChange()));
    connect(this->acceptButton,SIGNAL(clicked()),this,SLOT(accept()));
    connect(this->rejectButton,SIGNAL(clicked()),this,SLOT(reject()));
}

void DatabaseDialog::databaseChange()
{
    QString databaseName=QFileDialog::getOpenFileName(this,tr("Open database file"),tr("./"),tr("Databases (*.db)"));
    if(!databaseName.isNull())
    {
        this->databaseName->setText(databaseName);
    }
    else
    {
        this->databaseName->setText("No database.");
    }
}

bool DatabaseDialog::isDatabaseOk(QString dbName)
{
    return false;
}
