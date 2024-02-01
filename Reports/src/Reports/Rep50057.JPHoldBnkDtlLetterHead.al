report 50057 "JP Hold Bnk Dtl LetterHead"
{
    Caption = 'JP Hold Bnk Dtl LetterHead';
    DefaultLayout = RDLC;
    RDLCLayout = 'JP_HoldingBnkDtlLetterHead.rdlc';
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
