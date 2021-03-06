table "Reward Level" 
{
   
    
    fields
    {
        field(1;Level; Text[20]) { }
        
        field(2;"Minimum Reward Points"; Integer)
        {
            MinValue = 0;
            NotBlank = true;

            trigger OnValidate();
            var
                tempPoints: Integer;
                RewardLevel: Record "Reward Level";
            begin
                tempPoints :="Minimum Reward Points";
                RewardLevel.SetRange("Minimum Reward Points", tempPoints);
                if RewardLevel.FindFirst() then
                    Error('Minimum Reward Points must be unique');
            end;

            
        }
    }
    
    keys
    {
        key(PK; Level)
        {
            Clustered = true;
        }
        key("Minimum Reward Points"; "Minimum Reward Points"){ }
    }
    
    trigger OnInsert();
    begin
        Validate("Minimum Reward Points");
    end;

    trigger OnModify();
    begin
        Validate("Minimum Reward Points");
    end;
}

tableextension 50100"CustomerTable Ext." extends Customer
{
    fields 
    {
        field(10001; RewardPoints;Integer)
        {
            MinValue = 0;
        }
    }
}
    