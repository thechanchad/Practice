report 50053 "Grouping"
{
    Caption = 'Grouping ';
    DefaultLayout = RDLC;
    RDLCLayout = 'Grouping.rdlc';
    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "Document Type";
            column(DocumentNo; "No.") { }
            dataitem(SalesLine; "Sales Line")
            {
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                DataItemLinkReference = "Sales Header";

                column(No_; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(Amount; Amount) { }
            }
        }


    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    var

}
