## Performance Monitoring Report

### Tools Used
We used EXPLAIN to analyze SQL query performance.

### Issues Found
Some queries were performing full table scans on Booking and Payment tables.

### Actions Taken
We added indexes on:
- Booking.user_id
- Booking.property_id
- Payment.booking_id

### Results
After adding indexes, EXPLAIN showed index usage instead of full scans, and query execution time improved.

### Conclusion
Monitoring performance using EXPLAIN helped us identify slow queries and optimize them effectively.
