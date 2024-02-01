pageextension 50054 "Sales Order List Ext" extends "Sales Order List"
{
    actions
    {
        addafter("F&unctions")
        {

            action("GroupInReport")
            {
                ApplicationArea = All;
                Image = Report;
                Caption = 'Group In Report';
                trigger OnAction()
                var
                    Grouping_lRpt: Report "Grouping";
                begin
                    Grouping_lRpt.RunModal();
                end;
            }

        }
    }
}
