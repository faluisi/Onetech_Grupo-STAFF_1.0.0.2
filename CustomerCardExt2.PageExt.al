pageextension 50049 CustomerCardExt2 extends "Customer Card"
{
    layout
    {
        addafter("VAT Registration No.")
        {
            field("Group"; Rec."Group")
            {
                ApplicationArea = All;
                Caption = 'Group';
            }
            field("SubGroup"; Rec."SubGroup")
            {
                Caption = 'SubGroup';
                ApplicationArea = all;
            }
        }
    }
}
