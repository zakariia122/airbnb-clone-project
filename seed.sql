-- Insert users
INSERT INTO User (name, email, phone) VALUES
('Zakaria', 'zakaria@example.com', '0600000000'),
('Sara', 'sara@example.com', '0611111111');

-- Insert properties
INSERT INTO Property (title, description, location, price_per_night, host_id) VALUES
('Cozy Apartment', 'Nice place near downtown', 'Marrakech', 450.00, 1),
('Beach Villa', 'Amazing sea view villa', 'Agadir', 1200.00, 2);

-- Insert bookings
INSERT INTO Booking (user_id, property_id, start_date, end_date, total_price) VALUES
(1, 2, '2025-07-01', '2025-07-05', 4800.00),
(2, 1, '2025-07-10', '2025-07-12', 900.00);

-- Insert payments
INSERT INTO Payment (booking_id, amount, status, payment_date) VALUES
(1, 4800.00, 'paid', '2025-06-30'),
(2, 900.00, 'pending', '2025-07-05');

-- Insert reviews
INSERT INTO Review (user_id, property_id, rating, comment, created_at) VALUES
(1, 2, 5, 'Amazing place!', '2025-07-06 14:00:00'),
(2, 1, 4, 'Very clean and central.', '2025-07-13 11:30:00');
