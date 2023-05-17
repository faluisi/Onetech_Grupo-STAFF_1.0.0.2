pageextension 50029 CustomerListExt2 extends "Customer List"
{
    layout
    {
        addafter("Phone No.")
        {
            field("Payment Bank Code"; Rec."Payment Bank Code")
            {
                ApplicationArea = all;
            }
        }
        addafter("Name")
        {
            field("Group"; Rec."Group")
            {
                ApplicationArea = all;
            }
            field("SubGroup"; Rec."SubGroup")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        addlast(reporting)
        {
            group("Aged Account Monthly")
            {
                Caption = 'Aged Account Monthly';
                Image = "Report";

                action(AgedAccountMonthly)
                {
                    ApplicationArea = Advanced;
                    Caption = 'Aged Account Monthly';
                    Image = CustomerLedger;
                    RunObject = Page "Aged Accounts by Months";
                }
            }
        }
    }
    var myInt: Integer;
}
