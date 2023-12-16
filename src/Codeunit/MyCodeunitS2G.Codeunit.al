codeunit 50000 "MyCodeunitS2G"
{

    trigger OnRun()
    begin
        // MyProcedure();
    end;

    /*   local procedure MyProcedure()
       var

           // CLOUD
           NAVAppInstalledApp: Record "NAV App Installed App";

           xx: Codeunit "Extension Management";
           x: Codeunit "Extension Triggers";



       // OnPrem
       //PublishedApplication: Record "Published Application";
       //InstalledApplication: Record "Installed Application";
       begin


           if NAVAppInstalledApp.findset() then
               repeat
                   Clear(xx);
                   Clear(x);
               until NAVAppInstalledApp.next() = 0;

       end;*/
}