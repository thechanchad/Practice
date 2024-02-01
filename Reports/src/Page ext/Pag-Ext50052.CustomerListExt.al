// pageextension 50052 "Customer List Ext" extends "Customer List"
// {
//     actions
//     {
//         addafter(Functions)
//         {
//             action("Print Customer Report")
//             {
//                 ApplicationArea = All;
//                 Image = Report2;

//                 trigger OnAction()
//                 var

//                     CustReport: Report "Customer Report";
//                 begin
//                     CustReport.RunModal();

//                 end;
//             }
//             action("Print RDLC Report")
//             {
//                 ApplicationArea = All;
//                 Image = Report2;
//                 trigger OnAction()
//                 var
//                     Custrdlcreport: Report "Customer RDLC Layout";
//                 begin
//                     Custrdlcreport.RunModal();
//                 end;
//             }
//         }
//     }
// }


