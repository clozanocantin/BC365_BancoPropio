tableextension 50104 "Comp. Bank Account - CLE" extends "Cust. Ledger Entry"
{
    fields
    {
        field(50100; "Company Bank Account"; Code[20])
        {
            CaptionML = ENU = 'Company Bank Account',ESP = 'Cod. Banco Empresa';
            TableRelation = "Bank Account";
            Description = 'CLIP001';
        }
    }
}

pageextension 50106 "Comp. Bank Account - CLE" extends "Customer Ledger Entries"
{
    layout
    {
        addafter("Payment Method Code")
        {
            field("Company Bank Account";"Company Bank Account")
            {
                ApplicationArea = Basic,Suite;
                ToolTipML = ENU = 'Select a bank to be used in Cash Flow',ESP = 'Selecciome un bamco para utilizar en las previsiones de tesorería';

            }

        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}