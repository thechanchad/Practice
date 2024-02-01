report 50051 "Testing Report"
{
    Caption = 'Testing Report';
    DefaultLayout = RDLC;
    RDLCLayout = 'MyRDLCreport.rdlc';
    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "No.", "Bill-to Name", "Customer Posting Group";
            column(No_; "No.")
            {

            }
            column(Bill_to_Name; "Bill-to Name")
            {

            }

            column(Bill_to_Address; "Bill-to Address")
            {

            }
            column(Bill_to_Address_2; "Bill-to Address 2")
            {

            }
            column(Bill_to_City; "Bill-to City")
            {

            }
            column(Bill_to_County; "Bill-to County")
            {

            }
            column(Bill_to_Country_Region_Code; "Bill-to Country/Region Code")
            {

            }


        }
        dataitem("Sales Line"; "Sales Line")
        {
            column(Document_No_; "Document No.")
            {

            }
            column(Document_Type; "Document Type")
            {

            }
            column(Quantity; Quantity)
            {

            }
            column(Amount; Amount)
            {

            }
            column(Type; Type)
            {

            }

            column(Description; Description)
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
