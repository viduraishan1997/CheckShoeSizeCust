codeunit 50100 CheckShoeSize
{
    trigger OnRun()
    begin

    end;

    // procedure ShoeSize(var CustomerShoeSize: Record Customer)
    // begin
    //     if CustomerShoeSize.ShoeSize = 0 then
    //         CustomerShoeSize.ShoeSize := 42;
    // end;
    procedure MyTest(Cust: Record Customer)

    begin
        Cust.ShoeSize := 42;
    end;
}