page 50062 "Search Serial No."
{
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Worksheet;
    SourceTable = "Reservation Entry";
    SourceTableView = WHERE("Source Type"=CONST(39), "Serial No."=FILTER(<>''));

    layout
    {
        area(content)
        {
            group(Search)
            {
                field("Serial Filter"; SerialFilter)
                {
                    Caption = 'Serial Filter';
                    ApplicationArea = all;

                    trigger OnValidate();
                    begin
                        Rec.SETFILTER("Serial No.", SerialFilter);
                        SerialFilter:=Rec.GETFILTER("Serial No.");
                        CurrPage.UPDATE;
                    end;
                }
                field(ItemNoFilter; ItemNoFilter)
                {
                    Caption = 'Item No Filter';
                    ApplicationArea = all;

                    trigger OnLookup(var Text: Text): Boolean;
                    var
                        ItemList: Page "Item List";
                        item: Record Item;
                    begin
                        //ItemList.LOOKUPMODE(TRUE);
                        //ItemList.SETTABLEVIEW(item);
                        IF PAGE.RUNMODAL(31, item) = ACTION::LookupOK THEN BEGIN
                            Text:=item."No.";
                            EXIT(TRUE);
                        END;
                    end;
                    trigger OnValidate();
                    begin
                        Rec.SETFILTER("Item No.", ItemNoFilter);
                        ItemNoFilter:=Rec.GETFILTER("Item No.");
                        CurrPage.UPDATE;
                    end;
                }
                field(ItemNameFilter; ItemNameFilter)
                {
                    Caption = 'Item Name Filter';
                    Visible = false;
                    ApplicationArea = all;

                    trigger OnValidate();
                    begin
                        Rec.SETFILTER(Description, ItemNameFilter);
                        ItemNameFilter:=Rec.GETFILTER(Description);
                        CurrPage.UPDATE;
                    end;
                }
                field(DocNoFilter; DocNoFilter)
                {
                    Caption = 'Purch. Doc. No. Filter';
                    ApplicationArea = all;

                    trigger OnLookup(var Text: Text): Boolean;
                    var
                        PurchList: Page "Purchase Order List";
                        purch: Record "Purchase Header";
                    begin
                        IF PAGE.RUNMODAL(9307, purch) = ACTION::LookupOK THEN BEGIN
                            Text:=purch."No.";
                            EXIT(TRUE);
                        END;
                    end;
                    trigger OnValidate();
                    begin
                        Rec.SETFILTER("Source ID", DocNoFilter);
                        DocNoFilter:=Rec.GETFILTER("Source ID");
                        CurrPage.UPDATE;
                    end;
                }
            }
            repeater(Group)
            {
                field(VendorName; VendorName)
                {
                    Caption = 'Vendor Name';
                    Editable = false;
                    ApplicationArea = all;
                }
                field("Source ID"; Rec."Source ID")
                {
                    Editable = false;
                    ApplicationArea = all;
                }
                field("Source Ref. No."; Rec."Source Ref. No.")
                {
                    Editable = false;
                    ApplicationArea = all;
                }
                field("Item No."; Rec."Item No.")
                {
                    Editable = false;
                    ApplicationArea = all;
                }
                field(Description; ItemName)
                {
                    Editable = false;
                    ApplicationArea = all;
                }
                field("Quantity (Base)"; Rec."Quantity (Base)")
                {
                    Editable = false;
                    ApplicationArea = all;
                }
                field("Serial No."; Rec."Serial No.")
                {
                    Editable = false;
                    ApplicationArea = all;
                }
            }
        }
    }
    actions
    {
    }
    trigger OnAfterGetRecord();
    var
        purchhead: Record "Purchase Header";
        item: Record Item;
    begin
        VendorName:='';
        purchhead.SETRANGE("No.", Rec."Source ID");
        IF purchhead.FINDFIRST THEN VendorName:=purchhead."Buy-from Vendor Name";
        ItemName:='';
        IF item.GET(Rec."Item No.")THEN ItemName:=item.Description;
    end;
    var DocNoFilter: Text;
    ItemNoFilter: Text;
    ItemNameFilter: Text;
    SerialFilter: Text;
    VendorName: Text;
    ItemName: Text;
}
