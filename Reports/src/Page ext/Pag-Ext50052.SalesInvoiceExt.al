pageextension 50052 "Sales Invoice Ext" extends "Sales Invoice"
{
    actions
    {
        addafter("F&unctions")
        {
            action("Get Invoice")
            {
                ApplicationArea = All;
                Image = Invoice;
                trigger OnAction()
                var
                    SalesInvc_Rpt: Report "Sales Invoice Report";
                begin
                    SalesInvc_Rpt.RunModal();
                end;
            }
        }
    }
}
