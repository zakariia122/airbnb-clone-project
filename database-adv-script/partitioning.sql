CREATE TABLE bookings_partitioned (
    id INT,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

INSERT INTO bookings_partitioned
SELECT id, user_id, property_id, start_date, end_date
FROM bookings;
