pageextension 50098 PageExtension50101 extends "Cash Receipt Journal"
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
