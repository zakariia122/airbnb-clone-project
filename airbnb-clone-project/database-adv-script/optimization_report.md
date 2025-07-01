## Optimization Report

### Initial Query
We joined Booking with User, Property, and Payment to get full booking information.

### Performance Issue
Using EXPLAIN showed full table scans on Booking and Payment.

### Optimization Done
We added indexes on:
- Booking.user_id
- Booking.property_id
- Payment.booking_id

### Result
After adding these indexes, the execution plan used index lookups, which reduced query time significantly.

