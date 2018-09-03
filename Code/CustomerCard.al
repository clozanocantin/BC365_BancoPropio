pageextension 50100 "Comp. Bank Account-Cust.Card" extends "Customer Card"
{
    layout
    {
        addlast(Payments)
        {
            field("Company Bank Account";"Company Bank Account")
            {
                ApplicationArea = Basic,Suite;
                ToolTipML = ENU = 'Select a bank to be used in Cash Flow',ESP = 'Selecciome un bamco para utilizar en las previsiones de tesorería';
            }
        }
    }
}