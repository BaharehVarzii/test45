select 
        entitlement_id
        ,customer_id
        ,entitlement_status
        ,from_datetime
        ,to_datetime
        , expiry_date
        ,CAST(last_modified_datetime as DATE) AS activity_date
from 
cef_source.vw_ns_entitlement limit 1000

 
 
 select 
         entitlement_id
        ,customer_id
        ,entitlement_status
        ,from_datetime
        ,to_datetime
        , expiry_date
        ,CAST(NOW() as DATE) AS reporting_date
 from 
 cef_source.vw_ns_entitlement_current limit 1000