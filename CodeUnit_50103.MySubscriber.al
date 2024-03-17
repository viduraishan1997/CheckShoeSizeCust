codeunit 50103 MySubscriber
{
    EventSubscriberInstance = StaticAutomatic;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyPublisher, 'OnAddressLineChanged', '', true, true)]
    local procedure CheckAddreessLine(line: Text[100])
    begin
        if (STRPOS(line, '+') > 0) then begin
            MESSAGE('Can''t use a plus sign (+) in the address [' + line + ']');
        end;
    end;
}