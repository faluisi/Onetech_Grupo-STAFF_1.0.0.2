pageextension 50066 PostedSalesInvSubExtOneTech extends "Posted Sales Invoice Subform"
{
    layout
    {
        // addlast(Control1)
        // {
        //     field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
        //     {
        //         ApplicationArea = all;
        //     }
        // }
    }
    actions
    {
        addLast(processing)
        {
            action(ChangeGroup)
            {
                Caption = 'Change Posting Group';
                ApplicationArea = all;

                trigger OnAction();
                var
                    InputDialog: Page "Input Dialog Post Group";
                    GenBusGroup: Code[20];
                    GenItemgroup: Code[20];
                    search: Text;
                    change: Codeunit "Change Periode Date Sales";
                begin
                    CLEAR(InputDialog);
                    search := 'Item Posting Group';
                    InputDialog.SetValues(search, Rec."Gen. Bus. Posting Group", Rec."Gen. Prod. Posting Group");
                    IF ACTION::OK = InputDialog.RUNMODAL THEN BEGIN
                        InputDialog.GetValues(search, GenBusGroup, GenItemgroup);
                        change.ChangeSalesInvoicePostGroup(GenBusGroup, GenItemgroup, Rec);
                        CurrPage.UPDATE;
                    END;
                end;
            }
        }
    }
    var
        changedate: Codeunit "Change Periode Date Sales";
}
