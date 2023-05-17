table 50008 "Groups OneTech"
{
    DataClassification = ToBeClassified;
    LookupPageId = 50012;

    fields
    {
        field(50001; "Group"; Text[100])
        {
        }
        field(50002; "Group Name"; Text[100])
        {
        }
        field(50003; "SubGroup"; Text[100])
        {
        // not used
        }
        field(50004; "SubGroup Name"; Text[100])
        {
        // not used
        }
    }
    keys
    {
        key(PK; "Group")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Group", "Group Name")
        {
        }
    }
    trigger OnInsert()
    begin
        SubGroup:="Group";
    end;
    trigger OnModify()
    begin
    end;
    trigger OnDelete()
    begin
    end;
    trigger OnRename()
    begin
    end;
}
