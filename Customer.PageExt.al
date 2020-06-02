pageextension 80000 CustomerPageExt extends "Customer Card"

{
    layout
    {
        addlast(General)
        {
            field(Vlora; Vlora)
            {
                ApplicationArea = all;
                trigger OnValidate();
                begin
                    if Vlora < 10 then
                        Error('Is too small');
                end;
            }
        }
        modify("Credit Limit (LCY)")
        {
            trigger OnAfterValidate()
            begin
                if "Credit Limit (LCY)" < 500 then
                    Error('The value must be more than %1', 500);
            end;
        }

    }



    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}