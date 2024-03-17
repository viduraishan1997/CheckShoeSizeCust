pageextension 50100 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addafter("Disable Search by Name")
        {
            field(ShoeSize; Rec.ShoeSize)
            {
                ApplicationArea = All;
            }
            field(SocksNeeded; Rec.SocksNeeded)
            {
                ApplicationArea = All;
            }
        }
        modify(Address)
        {
            trigger OnBeforeValidate()
            var
                Publisher: Codeunit MyPublisher;
            begin
                Publisher.OnAddressLineChanged(Rec.Address);
            end;
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;

    // trigger OnOpenPage()
    // var
    //     myInt: Integer;
    // begin
    //     Codeunit.Run(50100)
    // end;
}