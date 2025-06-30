SELECT p.id, p.name
FROM properties p
JOIN reviews r ON p.id = r.property_id
GROUP BY p.id
HAVING COUNT(r.id) > 2;

SELECT DISTINCT u.id, u.name
FROM users u
JOIN bookings b ON u.id = b.user_id
JOIN properties p ON b.property_id = p.id
JOIN reviews r ON p.id = r.property_id
WHERE r.rating > 4.5;
