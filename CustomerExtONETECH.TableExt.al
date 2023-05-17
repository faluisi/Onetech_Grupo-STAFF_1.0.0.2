tableextension 50022 CustomerExtONETECH extends Customer
{
    fields
    {
        field(60100; "Current Month"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("0D Date Filter")));
            Caption = 'Current Month';
            Description = 'ONETECH Current Month-30D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60101; "1 Month"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("30D Date Filter")));
            Caption = '1 Month';
            Description = 'ONETECH 30-60D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60102; "2 Months"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("60D Date Filter")));
            Caption = '2 Months';
            Description = 'ONETECH 60-90D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60103; "3 Months"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("90D Date Filter")));
            Caption = '3 Months';
            Description = 'ONETECH 90-120D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60104; "4 Months"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("120D Date Filter")));
            Caption = '4 Months';
            Description = 'ONETECH 120-150D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60105; "5 Months"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("150D Date Filter")));
            Caption = '5 Months';
            Description = 'ONETECH 150-180D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60106; "6 Months"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("180D Date Filter")));
            Caption = '6 Months';
            Description = 'ONETECH 180-210D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60107; "0D Date Filter"; Date)
        {
            Caption = '0D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(60108; "30D Date Filter"; Date)
        {
            Caption = '30D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(60109; "60D Date Filter"; Date)
        {
            Caption = '60D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(60110; "90D Date Filter"; Date)
        {
            Caption = '90D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(60111; "120D Date Filter"; Date)
        {
            Caption = '120D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(60112; "150D Date Filter"; Date)
        {
            Caption = '150D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(60113; "180D Date Filter"; Date)
        {
            Caption = '180D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(50101; "7 Months"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("210D Date Filter")));
            Caption = '7 Months';
            Description = 'ONETECH 210-240D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50102; "8 Months"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("240D Date Filter")));
            Caption = '8 Months';
            Description = 'ONETECH 240-270D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50103; "9 Months"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("270D Date Filter")));
            Caption = '9 Months';
            Description = 'ONETECH 270-300D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50104; "10 Months"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("300D Date Filter")));
            Caption = '10 Months';
            Description = 'ONETECH 300-330D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50105; "11 Months"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("330D Date Filter")));
            Caption = '11 Months';
            Description = 'ONETECH 330-360D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50106; "12 Months"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=FILTER("Invoice"), "Initial Entry Due Date"=FIELD("360D Date Filter")));
            Caption = '12 Months';
            Description = 'ONETECH 360-390D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50115; "210D Date Filter"; Date)
        {
            Caption = '210D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(50116; "240D Date Filter"; Date)
        {
            Caption = '240D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(50117; "270D Date Filter"; Date)
        {
            Caption = '270D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(50118; "300D Date Filter"; Date)
        {
            Caption = '300D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(50119; "330D Date Filter"; Date)
        {
            Caption = '330D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(50120; "360D Date Filter"; Date)
        {
            Caption = '360D Date Filter';
            Description = 'ONETECH';
            FieldClass = FlowFilter;
        }
        field(50121; "SubGroup"; Text[100])
        {
            Caption = 'SubGroup';
            Description = 'ONETECH';
            FieldClass = Normal;
            TableRelation = "SubGroups".SubGroup where("Group"=field(Group));
        }
        field(50122; "Group"; Text[100])
        {
            Caption = 'Group';
            Description = 'ONETECH';
            FieldClass = Normal;
            TableRelation = "Groups";
        }
        field(60118; "Amounts Not Due"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No."=FIELD("No."), "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"), "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"), "Currency Code"=FIELD("Currency Filter"), "Posting Date"=FIELD("Date Filter"), "Initial Document Type"=CONST("Invoice"), "Initial Entry Due Date"=FIELD("Future Date Filter")));
            Caption = 'Current Month';
            Description = 'ONETECH Current Month-30D';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60117; "Future Date Filter"; Date)
        {
            Caption = '0D Date Filter';
            Description = 'Onetech';
            FieldClass = FlowFilter;
        }
    }
}
