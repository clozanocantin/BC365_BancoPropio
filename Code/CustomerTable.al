tableextension 50100 "Comp. Bank Account - Customer" extends Customer
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
