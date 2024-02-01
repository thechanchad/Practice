report 50056 "JP Bank Details Letterhead"
{
    Caption = 'JP Bank Details Letterhead';
    DefaultLayout = RDLC;
    RDLCLayout = 'JP_Bank Details Letterhead.rdlc';
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
