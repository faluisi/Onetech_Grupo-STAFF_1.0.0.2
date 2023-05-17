tableextension 50024 VendorExtOnetech extends Vendor
{
    fields
    {
    }
    trigger OnAfterModify()
    begin
        TestField("Currency Code");
    end;
}
