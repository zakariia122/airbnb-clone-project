
CREATE INDEX idx_booking_user_id ON Booking(user_id);

CREATE INDEX idx_booking_property_id ON Booking(property_id);

CREATE INDEX idx_user_email ON User(email);
  
  ## Indexing for Optimization

We created the following indexes:

1. idx_booking_user_id` → To speed up joins or filters using `Booking.user_id`
2. idx_booking_property_id` → To optimize queries filtering by `property_id`
3. idx_user_email` → For faster searches or login using `User.email`

### Performance Impact

We used `EXPLAIN` to analyze queries before and after adding indexes.
Query performance improved significantly, especially on joins and filters.
