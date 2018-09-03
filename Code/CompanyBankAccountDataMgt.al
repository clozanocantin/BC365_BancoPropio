codeunit 50101 "Comp. Bank Account - Data Mgt."
{
    Subtype = Install;

    trigger OnInstallAppPerDatabase()
    begin
        
    end;

    trigger OnInstallAppPerCompany()
    var
        info: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(info);
        if info.DataVersion() = info.AppVersion() then
        begin
            NavApp.RestoreArchiveData(Database::Customer);
            NavApp.RestoreArchiveData(Database::"Sales Header");
            NavApp.RestoreArchiveData(Database::"Sales Invoice Header");
            NavApp.RestoreArchiveData(Database::"Sales Cr.Memo Header");
            NavApp.RestoreArchiveData(Database::"Cust. Ledger Entry");
        end
        else
        begin
            NavApp.DeleteArchiveData(Database::Customer);
            NavApp.DeleteArchiveData(Database::"Sales Header");
            NavApp.DeleteArchiveData(Database::"Sales Invoice Header");
            NavApp.DeleteArchiveData(Database::"Sales Cr.Memo Header");
            NavApp.DeleteArchiveData(Database::"Cust. Ledger Entry");
        end;                
    end;
}