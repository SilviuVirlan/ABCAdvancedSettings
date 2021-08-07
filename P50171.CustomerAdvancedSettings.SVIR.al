page 50170 "ABC Advanced Settings"
{
    PageType = NavigatePage;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'ABC Advanced Settings';

    layout
    {
        area(Content)
        {
            grid(Header)
            {
                ShowCaption = false;
                GridLayout = Rows;

                grid(SystemLinks)
                {
                    GridLayout = Rows;

                    group(Financials)
                    {
                        InstructionalText = 'ABC Setup Financials in Business Central.';
                        ShowCaption = false;

                        field(GLSetup; 'General Ledger Setup')
                        {
                            ShowCaption = false;
                            ApplicationArea = All;
                            DrillDown = true;
                            Caption = 'General Ledger Setup';
                            ToolTip = 'Open General Ledger Setup';

                            trigger OnDrillDown()
                            begin
                                Page.Run(Page::"General Ledger Setup");
                                CurrPage.Close();
                            end;
                        }

                        field(Sales; 'Sales Setup')
                        {
                            ShowCaption = false;
                            ApplicationArea = All;
                            DrillDown = true;
                            Caption = 'Sales Setup';
                            ToolTip = 'Open Sales Setup';

                            trigger OnDrillDown()
                            begin
                                Page.Run(Page::"Sales & Receivables Setup");
                                CurrPage.Close();
                            end;
                        }
                        field(Dimensions; 'Dimensions Setup')
                        {
                            ShowCaption = false;
                            ApplicationArea = All;
                            DrillDown = true;
                            Caption = 'Dimensions Setup';
                            ToolTip = 'Open Dimensions Setup';

                            trigger OnDrillDown()
                            begin
                                Page.Run(Page::"Dimension List");
                                CurrPage.Close();
                            end;
                        }
                    }

                    group(ManualSetupGroup)
                    {
                        ShowCaption = false;
                        InstructionalText = 'Overview and manage individual settings and behaviors.';

                        field(ManualSetup; 'Manual Setup')
                        {
                            ShowCaption = false;
                            ApplicationArea = All;
                            DrillDown = true;
                            Caption = 'Manual Setup';
                            ToolTip = 'Open the Manual Setup page.';

                            trigger OnDrillDown()
                            begin
                                Page.Run(Page::"Manual Setup");
                                CurrPage.Close();
                            end;
                        }
                    }
                    group(IntegrationSetupGroup)
                    {
                        ShowCaption = false;
                        InstructionalText = 'Overview and manage integration settings and behaviors.';

                        field(Integration1; 'Integration1')
                        {
                            ShowCaption = false;
                            ApplicationArea = All;
                            DrillDown = true;
                            Caption = 'Integration1 Setup';
                            ToolTip = 'Open Integration1 Setup';

                            trigger OnDrillDown()
                            begin
                                Message('Open Integration1 Setup page');
                                CurrPage.Close();
                            end;
                        }

                        field(Integration2; 'Integration2')
                        {
                            ShowCaption = false;
                            ApplicationArea = All;
                            DrillDown = true;
                            Caption = 'Integration2 Setup';
                            ToolTip = 'Open Integration2 Setup';

                            trigger OnDrillDown()
                            begin
                                Message('Open Integration2 Setup page');
                                CurrPage.Close();
                            end;
                        }
                    }
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Done)
            {
                ApplicationArea = All;
                Caption = 'Done';
                ToolTip = 'Close the page.';
                Image = Close;
                InFooterBar = true;

                trigger OnAction()
                begin
                    CurrPage.Close();
                end;
            }
        }
    }
}