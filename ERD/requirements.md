# Entity-Relationship Diagram (ERD)

This ERD represents the core database structure of an Airbnb-like platform.

## Entities

- **User**: Represents the users of the platform,
  Attributes: id, name, email, phone

- **Property**: Represents the available properties for rent,
  Attributes: id, title, description, location, price_per_night, host_id

- **Booking**: Represents reservations made by users,
  Attributes: id, user_id, property_id, start_date, end_date, total_price

- **Payment**: Represents the payment for each booking,
  Attributes: id, booking_id, amount, status, payment_date

- **Review**: Represents reviews given by users for properties,
  Attributes: id, user_id, property_id, rating, comment, created_at

## Relationships

- One User can make many Bookings, 1:N
- One Property can be booked many times, 1:N
- Each Booking has one Payment, 1:1
- One User can leave many Reviews, 1:N
- One Property can receive many Reviews, 1:N

## Diagram File

You can find the visual diagram in this folder (as .png or .drawio file).
