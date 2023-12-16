codeunit 50003 "ProcessingRulePackageS2G"
{

    //https://www.navisiontech.com/create-a-configuration-package-with-processing-rules/
    //https://navbis.wordpress.com/2013/05/11/how-to-run-a-custom-codeunit-after-an-import/

    TableNo = "Config. Package Record";
    trigger OnRun()
    var
        ConfigPackageData: Record "Config. Package Data";
        GenJournalLineL: record "Gen. Journal Line";
        TemplateCodeL: Code[20];
        BatchL: Code[20];
    begin



        /*
        RecRef.get(“Record ID to Process”);
RecRef.SETTABLE(PurchHeader);
Codeunit.Run(Codeunit::”415″,PurchHeader);
        */


        IF (Rec."Package Code" = 'GL') AND (Rec."Table ID" = 81) THEN BEGIN
            ConfigPackageData.RESET();
            ConfigPackageData.SETRANGE("Package Code", Rec."Package Code");
            ConfigPackageData.SETRANGE("Table ID", Rec."Table ID");
            ConfigPackageData.SETRANGE("Field ID", 1);
            IF ConfigPackageData.FINDFIRST() THEN
                TemplateCodeL := COPYSTR(ConfigPackageData.Value, 1, 20);

            ConfigPackageData.SETRANGE("Field ID", 51);
            IF ConfigPackageData.FINDFIRST() THEN
                BatchL := COPYSTR(ConfigPackageData.Value, 1, 20);

            GenJournalLineL.RESET();
            GenJournalLineL.SETRANGE("Journal Template Name", TemplateCodeL);
            GenJournalLineL.SETRANGE("Journal Batch Name", BatchL);
            GenJournalLineL.SETRANGE("Currency Code", 'USD');
            IF GenJournalLineL.FINDFIRST() THEN
                REPEAT
                    GenjournalLineL.VALIDATE("Currency Code", '');
                    GenJournalLineL.MODIFY(TRUE);
                UNTIL GenjournalLineL.NEXT() = 0;
        END;



    end;


}