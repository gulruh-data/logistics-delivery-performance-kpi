SELECT 
    transporter,
    priority,
    COUNT(parcel_id) AS total_parcels,
    -- 'April 9, 2022' formatını tarihe çevirip farkını alıyoruz
    ROUND(AVG(DATE_DIFF(
        PARSE_DATE('%B %e, %Y', date_delivery), 
        PARSE_DATE('%B %e, %Y', date_purchase), 
        DAY)
    ), 1) AS avg_delivery_days,
    
    COUNTIF(date_cancelled IS NOT NULL) AS cancelled_parcels,
    
    ROUND(100 * COUNTIF(date_cancelled IS NOT NULL) / COUNT(parcel_id), 2) AS cancellation_rate
FROM `course15.cc_parcel`
WHERE transporter IS NOT NULL 
  AND date_delivery IS NOT NULL 
  AND date_purchase IS NOT NULL
  -- Hatalı format girişlerini engellemek için küçük bir güvenlik önlemi
  AND SAFE.PARSE_DATE('%B %e, %Y', date_delivery) IS NOT NULL
GROUP BY transporter, priority
ORDER BY avg_delivery_days ASC;