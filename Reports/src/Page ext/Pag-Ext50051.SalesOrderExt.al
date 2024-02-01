pageextension 50051 "Sales Order Ext" extends "Sales Order"
{
    actions
    {
        addafter("&Print")
        {
            //Pranav Commented This Hello Business central
            action("Genrate Report")
            {
                ApplicationArea = All;
                Image = Report;
                Caption = 'Generate Report';
                trigger OnAction()
                var
                    Testing_Rpt: Report "Testing Report";
                begin
                    Testing_Rpt.RunModal();
                end;
            }
            action("AN_BankDetails")
            {
                ApplicationArea = All;
                Image = Report;
                Caption = 'AN_BankDetails';
                trigger OnAction()
                var
                    Testing_Rpt: Report "AN Bank Details LetterHead";
                begin
                    Testing_Rpt.RunModal();
                end;
            }
            action("JP_BankDetails")
            {
                ApplicationArea = All;
                Image = Report;
                Caption = 'JP_BankDetails';
                trigger OnAction()
                var
                    Testing_Rpt: Report "JP Bank Details Letterhead";
                begin
                    Testing_Rpt.RunModal();
                end;
            }
            action("JP_HoldingBankDetails")
            {
                ApplicationArea = All;
                Image = Report;
                Caption = 'JP_HoldingBankDetails';
                trigger OnAction()
                var
                    Testing_Rpt: Report "JP Hold Bnk Dtl LetterHead";
                begin
                    Testing_Rpt.RunModal();
                end;
            }
        }
    }
}
