report 50058 "AN Bank Details LetterHead"
{
    Caption = 'AN Bank Details LetterHead';
    DefaultLayout = RDLC;
    RDLCLayout = 'AN_BankDetailsLetterHead.rdlc';
    dataset
    {
        dataitem(SalesInvoiceHeader; "Sales Invoice Header")
        {
            column(No_; "No.")
            {

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
}
