tableextension 50105 "Comp. Bank Account - GJL" extends "Gen. Journal Line"
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
