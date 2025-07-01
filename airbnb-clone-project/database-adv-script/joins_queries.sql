SELECT 
    Booking.id,
    User.name
FROM Booking
JOIN User ON Booking.user_id = User.id;

SELECT 
    Property.title,
    Review.rating
FROM Property
LEFT JOIN Review ON Property.id = Review.property_id;

SELECT 
    User.name,
    Booking.id
FROM User
LEFT JOIN Booking ON User.id = Booking.user_id

UNION

SELECT 
    User.name,
    Booking.id
FROM User
RIGHT JOIN Booking ON User.id = Booking.user_id;
