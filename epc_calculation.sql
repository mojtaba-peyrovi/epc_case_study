-- CREATE the TABLE joins
WITH raw_data AS (
    SELECT d.date,
           COALESCE(p.partnername, 0) AS partner,
           COALESCE(cp.clicksum, 0) AS clicks,
           COALESCE(t.comission, 0) AS commission
    FROM dim_date d
    LEFT JOIN transactions t ON d.date = t.date    
    LEFT JOIN click_partner cp ON d.date = cp.date
    LEFT JOIN partner p ON t.partnerid = p.partnerid or p.partnerid = cp.prtnerid
    
),
	
-- CREATE the epc calculations
epc_calculation AS (
    SELECT *,
           CASE
               WHEN clicks = 0 THEN 0
               ELSE ROUND(clicks / commission, 2)
           END AS epc
    FROM raw_data
),

daily_report AS (
    SELECT date,
           partner,
           clicks,
           commission,
           COALESCE(epc, 0) AS EPC
    FROM epc_calculation
)

SELECT * FROM daily_report;
