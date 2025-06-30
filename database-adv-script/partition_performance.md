Partitioned the bookings table by start_date year.

This allowed faster queries when filtering by date ranges.

Before partitioning, full scans were used.

After partitioning, the optimizer only reads the relevant partitions.
