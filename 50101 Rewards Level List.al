page 50101 "Rewards Level List"
{
    PageType =List;
    ContextSensitiveHelpPage = 'sales-rewards';
    SourceTable = "Reward Level";
    SourceTableView= sorting("Minimum Reward Points") order(ascending);

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Level;Level)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the level of reward that the customer has at this point.';

                }
                field("Minmmum Reward Points"; "Minimum Reward Points")
                {
                    ApplicationArea = All;
                    ToolTip='Specifies the number of points that customers must have to reach this level.';

                }
            }
        }

    }
    trigger OnOpenPage();
    begin
        if(not CustomerRewardsExtMgt.IsCustomerRewardsActived) then
            Error(NotActivatedTxt);
    end;
    var
    CustomerRewardsExtMgt: Codeunit "Customer Rewards Ext.Mgt.";
    NotActivatedTxt: Label'Customer Rewards is not activated';
}