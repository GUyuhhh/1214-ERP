table 50102 "Customer Rewards Mgt.Setup"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Primart Key"; Code[10])
        {
            
        }

        field(2;"Customer Rewards Ect.Mgt.Codeunit ID"; Integer)
        {
            TableRelation = "CodeUnit Metadata".ID
            
        }
    }
    
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    
}