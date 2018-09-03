codeunit 50100 "Company Bank Account Mgt."
{
    trigger OnRun()
    begin
        
    end;
    
    [EventSubscriber(ObjectType::Table,DATABASE::"Sales Header",'OnAfterValidateEvent','Bill-to Customer No.',true,true)]
    local procedure SetCompanyBankAccount_SalesHeader(var Rec: Record "Sales Header";var xRec: Record "Sales Header";CurrFieldNo : Integer)
    var
        Customer : Record Customer;
    begin
        if Customer.Get(rec."Bill-to Customer No.") then
        begin
            if Customer."Company Bank Account" <> '' then
            begin
                Rec.Validate("Company Bank Account",Customer."Company Bank Account");
            end;
        end;
    end;

    [EventSubscriber(ObjectType::Table,DATABASE::"Gen. Journal Line",'OnAfterCopyGenJnlLineFromSalesHeader','',true,true)]
    local procedure SetCompanyBankAccount_GenJnlLine(SalesHeader : Record "Sales Header";VAR GenJournalLine : Record "Gen. Journal Line")
    begin
        GenJournalLine."Company Bank Account" := SalesHeader."Company Bank Account";        
    end;

    [EventSubscriber(ObjectType::Table,DATABASE::"Cust. Ledger Entry",'OnAfterCopyCustLedgerEntryFromGenJnlLine','',true,true)]
    local procedure SetCompanyBankAccount_CustLedgerEntry(VAR CustLedgerEntry : Record "Cust. Ledger Entry";GenJournalLine : Record "Gen. Journal Line")
    begin
        CustLedgerEntry."Company Bank Account" := GenJournalLine."Company Bank Account";        
    end;

    [EventSubscriber(ObjectType::Codeunit,CODEUNIT::"Cust. Entry-Edit",'OnBeforeCustLedgEntryModify','',true,true)]
    local procedure ModifyCompanyBankAccount_CustLedgerEntry(VAR CustLedgEntry : Record "Cust. Ledger Entry";FromCustLedgEntry : Record "Cust. Ledger Entry");
    begin
        if CustLedgEntry.Open then
        begin
            CustLedgEntry."Company Bank Account" := FromCustLedgEntry."Company Bank Account";
        end   
    end;
}