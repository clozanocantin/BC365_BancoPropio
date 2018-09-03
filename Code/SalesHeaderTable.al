tableextension 50101 "Comp. Bank Account - SH" extends "Sales Header"
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

tableextension 50102 "Comp. Bank Account - SI" extends "Sales Invoice Header"
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

tableextension 50103 "Comp. Bank Account - SCMH" extends "Sales Cr.Memo Header"
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