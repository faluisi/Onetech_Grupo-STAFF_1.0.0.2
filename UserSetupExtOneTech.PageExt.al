pageextension 50057 UserSetupExtOneTech extends "User Setup"
{
    layout
    {
        addafter(Email)
        {
            field("Item Filter"; Rec."Item Filter")
            {
                ApplicationArea = All;
            }
            field("Bank Filter"; Rec."Bank Filter")
            {
                ApplicationArea = All;
            }
        }
    }
    var CustomerSiteP: Page "Customer - Site";
    CustomerSite: Record "Customer-Site";
    Operators: Record "Dimension Value";
    OperatorsP: Page "Dimension Values";
    OperatorsXML: XmlPort "Import Operators";
    CurrentCFS: Page "Current Customer FA per Site";
    FAMH: Record "FA Movement History";
    companyinfo: Record "Company Information";
    ShowSites: boolean;
    usersetup: Record "User Setup";
    trigger OnOpenPage()
    begin
        if usersetup.Get(UserId)then begin
        end;
    end;
}
