page 50013 "SubGroups"
{
    Caption = 'SubGroups';
    PageType = List;
    //ApplicationArea = All;
    //UsageCategor y = Lists;
    SourceTable = "SubGroups";

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
                field("SubGroup"; Rec."SubGroup")
                {
                    ApplicationArea = All;
                }
                field("SubGroup Name"; Rec."SubGroup Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
