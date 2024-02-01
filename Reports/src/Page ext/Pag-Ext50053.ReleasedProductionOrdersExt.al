pageextension 50053 "Released Production Orders Ext" extends "Released Production Orders"
{
    actions
    {
        addafter("F&unctions")
        {
            action("Genrate Report")
            {
                ApplicationArea = All;
                Image = Report;
                Caption = 'Generate Report';
                trigger OnAction()
                var
                    ProdOrder_Rpt: Report "Production Order Report";
                begin
                    ProdOrder_Rpt.RunModal();
                end;
            }



        }
    }
}
