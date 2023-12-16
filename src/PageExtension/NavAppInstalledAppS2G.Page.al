page 50000 "NavAppInstalledAppS2G"
{
    ApplicationArea = All;
    Caption = 'S2G - BPS Apps Installed';
    PageType = List;
    SourceTable = "NAV App Installed App";
    UsageCategory = Lists;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("App ID"; Rec."App ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'EnglishText', comment = 'ESP="YourLanguageText"';
                }
                field("Extension Type"; Rec."Extension Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'EnglishText', comment = 'ESP="YourLanguageText"';
                }
                field("Package ID"; Rec."Package ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'EnglishText', comment = 'ESP="YourLanguageText"';
                }
                field("Published As"; Rec."Published As")
                {
                    ApplicationArea = All;
                    ToolTip = 'EnglishText', comment = 'ESP="YourLanguageText"';
                }
                field(Publisher; Rec.Publisher)
                {
                    ApplicationArea = All;
                    ToolTip = 'EnglishText', comment = 'ESP="YourLanguageText"';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'EnglishText', comment = 'ESP="YourLanguageText"';
                }
                field("Version Build"; Rec."Version Build")
                {
                    ApplicationArea = All;
                    ToolTip = 'EnglishText', comment = 'ESP="YourLanguageText"';
                }
                field("Version Major"; Rec."Version Major")
                {
                    ApplicationArea = All;
                    ToolTip = 'EnglishText', comment = 'ESP="YourLanguageText"';
                }
                field("Version Minor"; Rec."Version Minor")
                {
                    ApplicationArea = All;
                    ToolTip = 'EnglishText', comment = 'ESP="YourLanguageText"';
                }
                field("Version Revision"; Rec."Version Revision")
                {
                    ApplicationArea = All;
                    ToolTip = 'EnglishText', comment = 'ESP="YourLanguageText"';
                }
            }
        }
    }
}
