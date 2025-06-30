Used SHOW PROFILE and EXPLAIN to analyze slow queries.

Found that the bookings and reviews tables were causing full scans.

Added indexes on user_id, property_id and start_date.

Query performance improved with better execution time and fewer scanned rows.
