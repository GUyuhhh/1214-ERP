table 50101 "Activation Code Information"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;ActivationCode; Text[14])
        {
            Description = 'Activation code used to activite Customer Rewards';
            
        }

        field(2;"Date Activated"; Date)
        {
            Description = 'Date Customer Rewards was activated';
            
        }

        field(3; "Expiration Date"; Date)
        {
            Description = 'Date Customer Rewards activation exories';
            
        }
    }
    
    keys
    {
        key(PK; ActivationCode)
        {
            Clustered = true;
        }
    }
    
}