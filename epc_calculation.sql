-- CREATE the TABLE joins
WITH raw_data AS (
    SELECT d.date,
    	   t.transactionid,
           p.partnername AS partner,
           cp.clicksum AS clicks,
           t.comission AS commission
    FROM dim_date d
    LEFT JOIN transactions t ON d.date = t.date    
    LEFT JOIN click_partner cp ON d.date = cp.date and t.partnerid = cp.prtnerid
    LEFT JOIN partner p ON t.partnerid = p.partnerid
    
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
           COALESCE(partner, 0) AS  Partner,
           COALESCE(clicks, 0) AS Clicks,
           COALESCE(commission, 0) AS Commission,
           COALESCE(epc, 0) AS EPC
    FROM epc_calculation
)

SELECT * FROM daily_report ORDER BY 1;
