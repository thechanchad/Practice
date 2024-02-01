report 50052 "Sales Invoice Report"
{
    Caption = 'Sales Invoice Report';
    DefaultLayout = RDLC;
    RDLCLayout = 'CCAMInvoice.rdlc';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            column(Bill_to_Name; "Bill-to Name") { }
            column(Bill_to_Address; "Bill-to Address") { }
            column(Bill_to_Address_2; "Bill-to Address 2") { }
            column(Bill_to_City; "Bill-to City") { }
            column(Bill_to_County; "Bill-to County") { }
            column(Bill_to_Post_Code; "Bill-to Post Code") { }
            column(No_; "No.") { }
            column(Posting_Date; "Posting Date") { }
            column(Due_Date; "Due Date") { }
            column(Picture; Companyinfo_lrec.Picture) { }
            column(Name; Companyinfo_lrec.Name) { }
            column(Address; Companyinfo_lrec.Address) { }
            column(Address2; Companyinfo_lrec."Address 2") { }
            column(City; Companyinfo_lrec.City) { }
            column(County; Companyinfo_lrec.County) { }
            column(PostCode; Companyinfo_lrec."Post Code") { }
            column(RegionCode; Companyinfo_lrec."Country/Region Code") { }
            column(PhoneNo; Companyinfo_lrec."Phone No.") { }
            column(Email; Companyinfo_lrec."E-Mail") { }
            column(AccountNo; Companyinfo_lrec."Bank Account No.") { }
            column(RoutingNo; Companyinfo_lrec."Payment Routing No.") { }

            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLinkReference = "Sales Header";
                DataItemLink = "No." = field("No.");
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(Unit_Price; "Unit Price") { }
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
    trigger OnPreReport()
    begin
        Companyinfo_lrec.Get();
        Companyinfo_lrec.CalcFields(Picture);
    end;

    var
        Companyinfo_lrec: Record "Company Information";
}
