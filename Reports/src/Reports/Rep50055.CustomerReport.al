report 50055 "Customer Report"
{
    Caption = 'Customer Report';
    RDLCLayout = 'Customer.rdlc';
    dataset
    {
        dataitem(Customer; Customer)
        {
            PrintOnlyIfDetail = true;
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLinkReference = Customer;
                DataItemLink = "Bill-to Customer No." = field("No.");
            }
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(City; City)
            {
            }
            column(BalanceLCY; "Balance (LCY)")
            {
            }
            column(CustomerNo; "No.")
            {
            }
            column(CustomerName; Name)
            {
            }
            dataitem(CustomerLedgers; "Cust. Ledger Entry")
            {
                DataItemLinkReference = Customer;
                DataItemLink = "Customer No." = field("No.");
                column(CustomerLedgersCustomerNo; "Customer No.")
                {
                }
                column(CustomerLedgersAmountLCY; "Amount (LCY)")
                {
                }
            }
        }
        dataitem(Vendor; Vendor)
        {
            column(VendorNo; "No.")
            {
            }
            column(VendorName; Name)
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
