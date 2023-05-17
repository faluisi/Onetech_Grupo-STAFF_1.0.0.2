pageextension 50067 GeneralLedgerEntriesExtOne extends "General Ledger Entries"
{
    layout
    {
        addafter("External Document No.")
        {
            field(VendorCode; VendorCode)
            {
                ApplicationArea = All;
            }
            field(VendorName; VendorName)
            {
                ApplicationArea = All;
            }
        }
    }
    var VendorCode: code[20];
    VendorName: text[100];
    trigger OnOpenPage()
    var
        purchheader: record "Purch. Inv. Header";
        purchcrheader: Record "Purch. Cr. Memo Hdr.";
    begin
        VendorCode:='';
        VendorName:='';
        if purchheader.Get(Rec."Document No.")then begin
            VendorCode:=purchheader."Buy-from Vendor No.";
            VendorName:=purchheader."Buy-from Vendor Name" end;
        if purchcrheader.Get(Rec."Document No.")then begin
            VendorCode:=purchcrheader."Buy-from Vendor No.";
            VendorName:=purchcrheader."Buy-from Vendor Name" end;
    end;
}
