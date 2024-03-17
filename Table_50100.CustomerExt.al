tableextension 50100 CustomerExt extends Customer
{
    fields
    {
        field(100001; ShoeSize; Integer)
        {
            Caption = 'Shoe Size';
            DataClassification = ToBeClassified;
        }
        field(10002; SocksNeeded; Text[10])
        {
            Caption = 'Socks Needed';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myCode: Codeunit 50100;
            begin
                if ShoeSize = 0 then begin
                    myCode.MyTest(Rec);
                    Modify();
                end;
            end;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
        
}