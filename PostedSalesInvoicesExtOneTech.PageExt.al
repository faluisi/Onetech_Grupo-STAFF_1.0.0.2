pageextension 50064 PostedSalesInvoicesExtOneTech extends "Posted Sales Invoice"
{
    actions
    {
        addLast(Navigation)
        {
            action(ChangePeriodDate)
            {
                Caption = 'Change Period Date';
                Image = ChangeDate;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction();
                begin
                    CLEAR(InputDialog);
                    search:='Period Date';
                    InputDialog.SetValues(search, Rec."Period Start", Rec."Period End");
                    IF ACTION::OK = InputDialog.RUNMODAL THEN BEGIN
                        InputDialog.GetValues(search, PeriodStart, PeriodEnd);
                        changedate.ChangeSalesInvoiceDate(PeriodStart, PeriodEnd, Rec);
                        CurrPage.UPDATE;
                    END;
                end;
            }
        }
    }
    var changedate: Codeunit "Change Periode Date Sales";
    PeriodStart: Date;
    PeriodEnd: Date;
    InputDialog: Page "Input Dialog Page";
    search: Text;
}
