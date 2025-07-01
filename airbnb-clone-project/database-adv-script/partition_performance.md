## Partitioning Performance Report

### Goal
We partitioned the Booking table by year of `start_date` to improve query performance on date filters.

### Partitioning Method
Used RANGE partitioning on YEAR(start_date) with multiple yearly partitions.

### Before Partitioning
Querying bookings in a specific year scanned the entire table.

### After Partitioning
The query only scanned the relevant partition, reducing execution time and improving performance.

### Conclusion
Partitioning significantly improved performance for time-based queries.
