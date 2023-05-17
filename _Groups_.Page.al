page 50012 "Groups"
{
    Caption = 'Groups';
    PageType = List;
    //ApplicationArea = All;
    //UsageCategor y = Lists;
    SourceTable = "Groups OneTech";

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field("Group"; Rec."Group")
                {
                    ApplicationArea = All;
                }
                field("Group Name"; Rec."Group Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
