-- Seed Database with Sample Data
-- Property Booking System

USE ecommerce_db; -- Assuming we're using the same database

-- 1. Insert Sample Customers (Users)
INSERT INTO customers (first_name, last_name, email, phone, date_of_birth, registration_date) VALUES
('John', 'Smith', 'john.smith@email.com', '555-0101', '1985-03-15', '2023-01-15 10:30:00'),
('Sarah', 'Johnson', 'sarah.j@email.com', '555-0102', '1990-07-22', '2023-02-20 14:15:00'),
('Michael', 'Brown', 'mike.brown@email.com', '555-0103', '1988-11-08', '2023-03-10 09:45:00'),
('Emily', 'Davis', 'emily.davis@email.com', '555-0104', '1992-04-30', '2023-04-05 16:20:00'),
('David', 'Wilson', 'david.wilson@email.com', '555-0105', '1987-09-12', '2023-05-12 11:00:00'),
('Lisa', 'Anderson', 'lisa.anderson@email.com', '555-0106', '1991-12-25', '2023-06-18 13:30:00'),
('Robert', 'Taylor', 'rob.taylor@email.com', '555-0107', '1986-06-03', '2023-07-22 15:45:00'),
('Jennifer', 'Martinez', 'jen.martinez@email.com', '555-0108', '1993-08-17', '2023-08-30 12:10:00'),
('Christopher', 'Garcia', 'chris.garcia@email.com', '555-0109', '1989-01-28', '2023-09-14 10:20:00'),
('Amanda', 'Rodriguez', 'amanda.rod@email.com', '555-0110', '1994-05-11', '2023-10-08 14:50:00');

-- 2. Insert Sample Addresses
INSERT INTO addresses (customer_id, address_type, street_address, city, state, postal_code, country, is_default) VALUES
(1, 'billing', '123 Main Street', 'New York', 'NY', '10001', 'USA', TRUE),
(1, 'shipping', '123 Main Street', 'New York', 'NY', '10001', 'USA', TRUE),
(2, 'billing', '456 Oak Avenue', 'Los Angeles', 'CA', '90210', 'USA', TRUE),
(2, 'shipping', '456 Oak Avenue', 'Los Angeles', 'CA', '90210', 'USA', TRUE),
(3, 'billing', '789 Pine Road', 'Chicago', 'IL', '60601', 'USA', TRUE),
(3, 'shipping', '789 Pine Road', 'Chicago', 'IL', '60601', 'USA', TRUE),
(4, 'billing', '321 Elm Street', 'Houston', 'TX', '77001', 'USA', TRUE),
(4, 'shipping', '321 Elm Street', 'Houston', 'TX', '77001', 'USA', TRUE),
(5, 'billing', '654 Maple Drive', 'Phoenix', 'AZ', '85001', 'USA', TRUE),
(5, 'shipping', '654 Maple Drive', 'Phoenix', 'AZ', '85001', 'USA', TRUE),
(6, 'billing', '987 Cedar Lane', 'Philadelphia', 'PA', '19101', 'USA', TRUE),
(6, 'shipping', '987 Cedar Lane', 'Philadelphia', 'PA', '19101', 'USA', TRUE),
(7, 'billing', '147 Birch Court', 'San Antonio', 'TX', '78201', 'USA', TRUE),
(7, 'shipping', '147 Birch Court', 'San Antonio', 'TX', '78201', 'USA', TRUE),
(8, 'billing', '258 Spruce Way', 'San Diego', 'CA', '92101', 'USA', TRUE),
(8, 'shipping', '258 Spruce Way', 'San Diego', 'CA', '92101', 'USA', TRUE),
(9, 'billing', '369 Willow Place', 'Dallas', 'TX', '75201', 'USA', TRUE),
(9, 'shipping', '369 Willow Place', 'Dallas', 'TX', '75201', 'USA', TRUE),
(10, 'billing', '741 Aspen Circle', 'San Jose', 'CA', '95101', 'USA', TRUE),
(10, 'shipping', '741 Aspen Circle', 'San Jose', 'CA', '95101', 'USA', TRUE);

-- 3. Insert Sample Categories (Property Types)
INSERT INTO categories (category_name, description, parent_category_id, is_active) VALUES
('Residential', 'Residential properties for living', NULL, TRUE),
('Commercial', 'Commercial properties for business', NULL, TRUE),
('Vacation', 'Vacation and holiday properties', NULL, TRUE),
('Apartments', 'Apartment units', 1, TRUE),
('Houses', 'Single-family houses', 1, TRUE),
('Condos', 'Condominium units', 1, TRUE),
('Office Space', 'Office buildings and spaces', 2, TRUE),
('Retail Space', 'Retail stores and shopping centers', 2, TRUE),
('Warehouse', 'Storage and warehouse facilities', 2, TRUE),
('Beach Houses', 'Beachfront vacation properties', 3, TRUE),
('Mountain Cabins', 'Mountain and forest retreats', 3, TRUE),
('City Apartments', 'Urban apartment rentals', 4, TRUE),
('Suburban Houses', 'Suburban family homes', 5, TRUE),
('Luxury Condos', 'High-end condominium units', 6, TRUE);

-- 4. Insert Sample Products (Properties)
INSERT INTO products (category_id, product_name, description, sku, price, cost_price, stock_quantity, weight_kg, dimensions_cm, is_active) VALUES
-- Beach Houses
(10, 'Oceanfront Paradise Villa', 'Luxurious 3-bedroom beachfront villa with private pool and ocean views', 'BH001', 450.00, 300.00, 1, 0.00, '200x150', TRUE),
(10, 'Coastal Breeze Cottage', 'Charming 2-bedroom cottage steps from the beach', 'BH002', 280.00, 200.00, 1, 0.00, '150x120', TRUE),
(10, 'Sunset Beach House', 'Spacious 4-bedroom beach house with panoramic ocean views', 'BH003', 520.00, 350.00, 1, 0.00, '250x180', TRUE),

-- Mountain Cabins
(11, 'Alpine Retreat Cabin', 'Cozy 2-bedroom cabin with mountain views and fireplace', 'MC001', 320.00, 220.00, 1, 0.00, '180x140', TRUE),
(11, 'Forest Haven Lodge', 'Large 3-bedroom lodge surrounded by pine forest', 'MC002', 380.00, 260.00, 1, 0.00, '220x160', TRUE),
(11, 'Mountain View Chalet', 'Luxury 4-bedroom chalet with hot tub and mountain vistas', 'MC003', 450.00, 320.00, 1, 0.00, '280x200', TRUE),

-- City Apartments
(12, 'Downtown Luxury Loft', 'Modern 1-bedroom loft in the heart of downtown', 'CA001', 180.00, 120.00, 1, 0.00, '80x60', TRUE),
(12, 'Urban Studio Apartment', 'Cozy studio apartment perfect for city living', 'CA002', 120.00, 80.00, 1, 0.00, '60x40', TRUE),
(12, 'Penthouse Suite', 'Exclusive 2-bedroom penthouse with city skyline views', 'CA003', 350.00, 250.00, 1, 0.00, '120x90', TRUE),

-- Suburban Houses
(13, 'Family Home with Garden', 'Spacious 3-bedroom house with large backyard', 'SH001', 220.00, 150.00, 1, 0.00, '160x120', TRUE),
(13, 'Modern Suburban Villa', 'Contemporary 4-bedroom villa with garage', 'SH002', 280.00, 190.00, 1, 0.00, '200x150', TRUE),
(13, 'Cozy Family Cottage', 'Charming 2-bedroom cottage in quiet neighborhood', 'SH003', 160.00, 110.00, 1, 0.00, '120x90', TRUE),

-- Luxury Condos
(14, 'High-Rise Luxury Condo', 'Premium 2-bedroom condo with city and ocean views', 'LC001', 400.00, 280.00, 1, 0.00, '140x100', TRUE),
(14, 'Penthouse Condo', 'Exclusive 3-bedroom penthouse with private terrace', 'LC002', 550.00, 380.00, 1, 0.00, '180x140', TRUE),
(14, 'Waterfront Condo', 'Luxury 2-bedroom condo with marina views', 'LC003', 380.00, 260.00, 1, 0.00, '130x95', TRUE);

-- 5. Insert Sample Orders (Bookings)
INSERT INTO orders (customer_id, order_date, status, total_amount, shipping_address_id, billing_address_id, payment_method, notes) VALUES
(1, '2024-01-15 10:30:00', 'delivered', 1350.00, 2, 1, 'credit_card', 'Weekend getaway'),
(2, '2024-01-20 14:15:00', 'delivered', 960.00, 4, 3, 'paypal', 'Business trip'),
(3, '2024-02-05 09:45:00', 'delivered', 1140.00, 6, 5, 'credit_card', 'Family vacation'),
(4, '2024-02-12 16:20:00', 'delivered', 360.00, 8, 7, 'bank_transfer', 'Quick city break'),
(5, '2024-02-25 11:00:00', 'shipped', 840.00, 10, 9, 'credit_card', 'Mountain retreat'),
(6, '2024-03-10 13:30:00', 'confirmed', 660.00, 12, 11, 'paypal', 'Anniversary celebration'),
(7, '2024-03-18 15:45:00', 'pending', 480.00, 14, 13, 'credit_card', 'Weekend escape'),
(8, '2024-03-25 12:10:00', 'pending', 700.00, 16, 15, 'paypal', 'Birthday trip'),
(9, '2024-04-02 10:20:00', 'confirmed', 1100.00, 18, 17, 'credit_card', 'Family reunion'),
(10, '2024-04-08 14:50:00', 'pending', 380.00, 20, 19, 'bank_transfer', 'Business meeting');

-- 6. Insert Sample Order Items (Booking Details)
INSERT INTO order_items (order_id, product_id, quantity, unit_price, discount_percent) VALUES
-- Order 1: 3 nights at Oceanfront Paradise Villa
(1, 1, 3, 450.00, 0.00),

-- Order 2: 3 nights at Alpine Retreat Cabin
(2, 4, 3, 320.00, 0.00),

-- Order 3: 3 nights at Sunset Beach House
(3, 3, 3, 380.00, 0.00),

-- Order 4: 3 nights at Urban Studio Apartment
(4, 8, 3, 120.00, 0.00),

-- Order 5: 3 nights at Forest Haven Lodge
(5, 5, 3, 280.00, 0.00),

-- Order 6: 3 nights at Family Home with Garden
(6, 10, 3, 220.00, 0.00),

-- Order 7: 4 nights at Coastal Breeze Cottage
(7, 2, 4, 120.00, 0.00),

-- Order 8: 2 nights at Penthouse Suite
(8, 9, 2, 350.00, 0.00),

-- Order 9: 2 nights at High-Rise Luxury Condo
(9, 13, 2, 400.00, 0.00),
-- Order 9: 1 night at Mountain View Chalet
(9, 6, 1, 300.00, 0.00),

-- Order 10: 2 nights at Cozy Family Cottage
(10, 12, 2, 160.00, 0.00),
-- Order 10: 1 night at Downtown Luxury Loft
(10, 7, 1, 60.00, 0.00);

-- 7. Insert Sample Reviews
INSERT INTO reviews (product_id, customer_id, rating, title, comment, review_date, is_verified_purchase) VALUES
(1, 1, 5, 'Perfect Beach Getaway', 'Absolutely stunning property with amazing ocean views. The villa was immaculate and the service was exceptional.', '2024-01-18 15:30:00', TRUE),
(4, 2, 4, 'Cozy Mountain Retreat', 'Beautiful cabin with great amenities. The fireplace was perfect for cold nights. Would definitely return.', '2024-01-23 12:15:00', TRUE),
(3, 3, 5, 'Dream Beach House', 'Exceeded all expectations! The house was spacious, clean, and the location was perfect. Highly recommend!', '2024-02-08 18:45:00', TRUE),
(8, 4, 4, 'Great City Location', 'Perfect location for exploring the city. The apartment was clean and had everything we needed.', '2024-02-15 14:20:00', TRUE),
(5, 5, 5, 'Amazing Forest Lodge', 'Incredible experience! The lodge was beautiful and the surrounding forest was breathtaking.', '2024-03-01 16:30:00', TRUE),
(10, 6, 4, 'Perfect Family Home', 'Great house for our family vacation. Spacious rooms and a lovely garden. Very comfortable stay.', '2024-03-13 11:45:00', TRUE),
(2, 7, 3, 'Nice Cottage', 'Cute cottage but a bit small for our needs. Location was good though.', '2024-03-22 13:20:00', TRUE),
(9, 8, 5, 'Luxury Penthouse', 'Absolutely luxurious! The penthouse was stunning with amazing city views. Worth every penny.', '2024-03-28 19:15:00', TRUE),
(13, 9, 5, 'Premium Condo Experience', 'Top-notch luxury condo with spectacular views. The amenities were excellent.', '2024-04-05 17:30:00', TRUE),
(12, 10, 4, 'Charming Cottage', 'Lovely cottage in a quiet neighborhood. Perfect for a peaceful getaway.', '2024-04-11 10:45:00', TRUE);

-- Additional Reviews for Variety
INSERT INTO reviews (product_id, customer_id, rating, title, comment, review_date, is_verified_purchase) VALUES
(6, 1, 4, 'Luxury Mountain Chalet', 'Beautiful chalet with amazing mountain views. The hot tub was a great addition.', '2024-02-20 14:30:00', TRUE),
(7, 2, 5, 'Perfect Downtown Loft', 'Modern and stylish loft in the perfect location. Loved the urban vibe!', '2024-03-05 16:45:00', TRUE),
(11, 3, 4, 'Spacious Family Villa', 'Great villa with plenty of space for our family. The garage was very convenient.', '2024-03-15 12:20:00', TRUE),
(14, 4, 5, 'Exclusive Penthouse', 'Incredible penthouse with private terrace. The views were absolutely stunning.', '2024-04-01 18:10:00', TRUE),
(15, 5, 4, 'Beautiful Waterfront Condo', 'Lovely condo with great marina views. Very peaceful and relaxing.', '2024-04-10 15:25:00', TRUE);
