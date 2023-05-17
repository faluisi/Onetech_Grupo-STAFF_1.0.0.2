pageextension 50056 CompaniesPageExt extends Companies
{
    var myInt: Integer;
    trigger OnDeleteRecord(): Boolean begin
    //Error('Delete is disabled');
    end;
}
