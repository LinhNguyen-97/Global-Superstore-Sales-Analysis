SELECT string_field_0 AS Person
        ,string_field_1 AS Region
FROM global-superstore-475905.global_superstore_rawdata.SalesTeam
WHERE string_field_0 != "Person" 
      AND string_field_1 != "Region"
;
