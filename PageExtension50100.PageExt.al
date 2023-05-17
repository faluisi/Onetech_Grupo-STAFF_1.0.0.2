pageextension 50099 PageExtension50100 extends "General Journal"
{
    layout
    {
        addafter("Document No.")
        {
            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
        addafter("Amount")
        {
            field("Amount LCY"; Rec."Amount (LCY)")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}
