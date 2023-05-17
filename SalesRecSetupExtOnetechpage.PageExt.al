pageextension 50052 SalesRecSetupExtOnetechpage extends "Sales & Receivables Setup"
{
    layout
    {
        // Add changes to page layout here
        addbefore("Discount Posting")
        {
            field("Period Start End mandatory"; Rec."Period Start End mandatory")
            {
                ApplicationArea = All;
                Caption = 'Period Start End mandatory';
                ToolTip = 'Determine whether to make fields Period Start, Period End mandatory before posting';
            }
        }
    }
    var myInt: Integer;
}
