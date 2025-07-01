SELECT *
FROM Property
WHERE id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);
SELECT *
FROM User u
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.id
) > 3;
