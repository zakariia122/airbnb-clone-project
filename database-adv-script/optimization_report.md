Initial query joins bookings, users, properties, and payments.

After running EXPLAIN, we found some full table scans.

We added indexes on booking_id and property_id to improve performance.

Execution time decreased and fewer rows were scanned.
