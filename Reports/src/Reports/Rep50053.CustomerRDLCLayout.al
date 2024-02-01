// report 50053 "Customer RDLC Layout"
// {
//     Caption = 'Customer RDLC Layout';
//     RDLCLayout = 'Cust.rdlc';
//     dataset
//     {
//         dataitem(Customer; Customer)
//         {
//             dataitem("Sales Line"; "Sales Line")
//             {
//                 DataItemLinkReference = Customer;
//                 DataItemLink = "Bill-to Customer No." = field("No.");
//                 column(No_; "No.") { }

//                 column(Description; Description) { }
//             }
//             column(CustomerNo; "No.") { }
//             column(CustomerName; Name) { }
//             column(City; City) { }
//             column(BalanceLCY; "Balance (LCY)") { }
//         }
//     }
//     requestpage
//     {
//         layout
//         {
//             area(content)
//             {
//                 group(GroupName)
//                 {
//                 }
//             }
//         }
//         actions
//         {
//             area(processing)
//             {
//             }
//         }
//     }
// }
