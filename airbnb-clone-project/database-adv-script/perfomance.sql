SELECT 
    Booking.id AS booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    User.name AS user_name,
    Property.title AS property_title,
    Payment.amount,
    Payment.status
FROM Booking
JOIN User ON Booking.user_id = User.id
JOIN Property ON Booking.property_id = Property.id
JOIN Payment ON Payment.booking_id = Booking.id;
