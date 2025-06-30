CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON reviews(property_id);

EXPLAIN
SELECT u.name, b.id
FROM users u
JOIN bookings b ON u.id = b.user_id;

SELECT *
FROM bookings
WHERE user_id = 3;
