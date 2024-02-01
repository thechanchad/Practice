report 50054 "Production Order Report"
{
    Caption = 'PROD Label';
    RDLCLayout = 'Report_50035_PROD_Label.rdl';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    ApplicationArea = All;
    dataset
    {
        dataitem(Production_Order; "Production Order")
        {
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = sorting(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(No_; Production_Order."No.") { }
                    column(Source_No_; Production_Order."Source No.") { }
                    column(Start_Date; Production_Order."Starting Date") { }
                    column(Company_Picture; Companyinfo_lrec.Picture) { }
                    column(CopyNo; CopyNo) { }
                    column(CopyText; CopyText) { }
                    column(QR_BLOB; TenantMedia_gRec.Content) { }

                }
                trigger OnPreDataItem();
                begin
                    NoLoops := Round(Abs(Production_Order.Quantity) / 6, 1, '>');
                    CopyText := '';
                    SETRANGE(Number, 1, NoLoops);
                    CopyNo := 0;

                    //  NoLoops := Round((Abs(Production_Order.Quantity) / 6), 1, '>');
                    // CopyNo := 0;
                end;

                trigger OnAfterGetRecord();
                begin
                    if Number > 1 then begin
                        CopyText := FormatDocument.GetCOPYText;
                        CopyNo += 1;
                    end;

                    //  if CopyNo = NoLoops then begin
                    //     CurrReport.Break();
                    // end;
                    // CopyNo := CopyNo + 1;
                end;

            }
            trigger OnAfterGetRecord()
            var
                QRCodeURL: Text;
                ClientHTTP: HttpClient;
                Responce: HttpResponseMessage;
                lStr: InStream;
            begin
                //Get QR Code>>
                IF NOT Item_gRecTmp.IsTemporary then
                    Error('Variable Item_gRecTmp should be Temp Variable');

                //https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=TEST23232
                Item_gRecTmp.RESET;
                Item_gRecTmp.DeleteAll();
                //BarcodeURL := StrSubstNo('https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=%1', Header."No.");
                QRCodeURL := StrSubstNo('https://barcode.tec-it.com/barcode.ashx?data=%1&code=QRCode', "Source No.");
                ClientHTTP.GET(QRcodeURL, Responce);

                Responce.Content.ReadAs(lStr);
                Clear(Item_gRecTmp);
                EntryNo_gInt += 1;
                Item_gRecTmp."No." := Format(EntryNo_gInt);
                Item_gRecTmp.Insert();
                Item_gRecTmp.Picture.ImportStream(lStr, 'QRcodeFromURL');
                Item_gRecTmp.Modify();

                TenantMedia_gRec.Get(Item_gRecTmp.Picture.ITEM(1));
                TenantMedia_gRec.CalcFields(Content);
            end;

            trigger OnPreDataItem()
            begin
                Companyinfo_lrec.Get();
                Companyinfo_lrec.CalcFields(Picture);
            end;
        }
    }


    var
        Companyinfo_lrec: Record "Company Information";

        ShowUnitCost: Boolean;
        NoOfCopies: Integer;
        NoLoops: Integer;
        CopyText: Text[30];
        CopyNo: Integer;
        FormatDocument: Codeunit "Format Document";
        Item_gRecTmp: Record Item temporary;
        TenantMedia_gRec: Record "Tenant Media";
        EntryNo_gInt: Integer;



}
