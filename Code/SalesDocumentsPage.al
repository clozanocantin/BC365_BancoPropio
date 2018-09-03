pageextension 50101 "Comp. Bank Account-SO" extends "Sales Order"
{
    layout
    {
        addlast("Invoice Details")
        {
            field("Company Bank Account";"Company Bank Account")
            {
                ApplicationArea = Basic,Suite;
                ToolTipML = ENU = 'Select a bank to be used in Cash Flow',ESP = 'Selecciome un bamco para utilizar en las previsiones de tesorería';
            }
        }
    }
}

pageextension 50102 "Comp. Bank Account-SI" extends "Sales Invoice"
{
    layout
    {
        addlast("Invoice Details")
        {
            field("Company Bank Account";"Company Bank Account")
            {
                ApplicationArea = Basic,Suite;
                ToolTipML = ENU = 'Select a bank to be used in Cash Flow',ESP = 'Selecciome un bamco para utilizar en las previsiones de tesorería';
            }
        }
    }
}

pageextension 50103 "Comp. Bank Account-SCM" extends "Sales Credit Memo"
{
    layout
    {
        addlast("Credit Memo Details")
        {
            field("Company Bank Account";"Company Bank Account")
            {
                ApplicationArea = Basic,Suite;
                ToolTipML = ENU = 'Select a bank to be used in Cash Flow',ESP = 'Selecciome un bamco para utilizar en las previsiones de tesorería';
            }
        }
    }
}

pageextension 50104 "Comp. Bank Account-SIH" extends "Posted Sales Invoice"
{
    layout
    {
        addlast("Invoice Details")
        {
            field("Company Bank Account";"Company Bank Account")
            {
                ApplicationArea = Basic,Suite;
                ToolTipML = ENU = 'Select a bank to be used in Cash Flow',ESP = 'Selecciome un bamco para utilizar en las previsiones de tesorería';
            }
        }
    }
}

pageextension 50105 "Comp. Bank Account-PSCM" extends "Posted Sales Credit Memo"
{
    layout
    {
        addlast("Invoice Details")
        {
            field("Company Bank Account";"Company Bank Account")
            {
                ApplicationArea = Basic,Suite;
                ToolTipML = ENU = 'Select a bank to be used in Cash Flow',ESP = 'Selecciome un bamco para utilizar en las previsiones de tesorería';
            }
        }
    }
}