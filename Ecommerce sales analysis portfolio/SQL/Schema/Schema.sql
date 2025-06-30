CREATE TABLE customers (
  customer_id VARCHAR(4) PRIMARY KEY,
  name VARCHAR(50),
  region VARCHAR(10),
  signup_date DATE
);

INSERT INTO customers
  (customer_id, name, region, signup_date)
VALUES
  ('C001', 'Jane Davis', 'North', '2022-11-25'),
  ('C002', 'Alex Brown', 'West', '2022-04-30'),
  ('C003', 'Katie Lee', 'West', '2021-12-26'),
  ('C004', 'Sam Clark', 'West', '2022-04-15'),
  ('C005', 'Alex Clark', 'East', '2022-05-16'),
  ('C006', 'Alex Davis', 'North', '2021-11-17'),
  ('C007', 'Jane Brown', 'West', '2021-10-15'),
  ('C008', 'Katie Davis', 'East', '2021-11-16'),
  ('C009', 'Chris Doe', 'North', '2021-12-01'),
  ('C010', 'Jane Lee', 'East', '2022-05-17'),
  ('C011', 'Sam Davis', 'East', '2021-01-24'),
  ('C012', 'Jordan Doe', 'South', '2022-03-24'),
  ('C013', 'Katie Lee', 'South', '2021-09-02'),
  ('C014', 'Sam Johnson', 'South', '2022-09-26'),
  ('C015', 'Jane Lee', 'South', '2022-04-01'),
  ('C016', 'Sam Clark', 'East', '2021-02-04'),
  ('C017', 'Jordan Smith', 'North', '2022-12-03'),
  ('C018', 'Katie Johnson', 'North', '2021-01-08'),
  ('C019', 'Sam Smith', 'West', '2022-10-17'),
  ('C020', 'Jane Smith', 'North', '2021-07-04');

CREATE TABLE orders (
  order_id VARCHAR(4) PRIMARY KEY,
  customer_id VARCHAR(4),
  order_date DATE,
  total_amount DECIMAL(10,2),
  discount_percent INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders
  (order_id, customer_id, order_date, total_amount, discount_percent)
VALUES
  ('O001', 'C007', '2023-02-02', 215.35, 10),
  ('O002', 'C008', '2023-05-19', 171.89, 0),
  ('O003', 'C008', '2023-01-08', 325.21, 0),
  ('O004', 'C014', '2023-08-25', 200.69, 5),
  ('O005', 'C018', '2023-06-07', 371.89, 0),
  ('O006', 'C008', '2023-01-15', 457.83, 0),
  ('O007', 'C015', '2023-03-23', 112.70, 0),
  ('O008', 'C010', '2023-11-29', 75.53, 5),
  ('O009', 'C001', '2023-07-13', 116.89, 0),
  ('O010', 'C001', '2023-06-05', 134.19, 15),
  ('O011', 'C011', '2023-12-30', 458.89, 10),
  ('O012', 'C019', '2023-01-30', 129.88, 10),
  ('O013', 'C003', '2023-12-25', 464.82, 15),
  ('O014', 'C007', '2023-03-21', 246.98, 0),
  ('O015', 'C014', '2023-03-26', 285.96, 15),
  ('O016', 'C003', '2023-12-26', 115.70, 10),
  ('O017', 'C002', '2023-11-01', 378.84, 0),
  ('O018', 'C006', '2023-11-26', 377.65, 0),
  ('O019', 'C019', '2023-01-22', 151.21, 15),
  ('O020', 'C008', '2023-02-02', 351.06, 10),
  ('O021', 'C006', '2023-07-17', 188.67, 15),
  ('O022', 'C011', '2023-07-16', 282.90, 5),
  ('O023', 'C017', '2023-09-09', 232.20, 5),
  ('O024', 'C011', '2023-05-30', 339.42, 5),
  ('O025', 'C011', '2023-08-03', 306.65, 10),
  ('O026', 'C015', '2023-12-02', 354.58, 15),
  ('O027', 'C010', '2023-12-19', 421.20, 15),
  ('O028', 'C016', '2023-02-17', 121.08, 5),
  ('O029', 'C005', '2023-11-03', 248.04, 10),
  ('O030', 'C008', '2023-12-31', 141.30, 10),
  ('O031', 'C015', '2023-04-13', 396.45, 15),
  ('O032', 'C011', '2023-06-06', 107.48, 0),
  ('O033', 'C004', '2023-10-17', 107.00, 5),
  ('O034', 'C002', '2023-07-24', 216.71, 10),
  ('O035', 'C019', '2023-02-11', 407.81, 0),
  ('O036', 'C009', '2023-02-16', 461.21, 10),
  ('O037', 'C018', '2023-06-22', 279.80, 5),
  ('O038', 'C012', '2023-07-20', 192.74, 5),
  ('O039', 'C008', '2023-03-03', 302.63, 10),
  ('O040', 'C011', '2023-07-23', 273.92, 10);

CREATE TABLE products (
  product_id VARCHAR(4) PRIMARY KEY,
  order_id VARCHAR(4),
  category VARCHAR(20),
  quantity INTEGER,
  unit_price DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO products
  (product_id, order_id, category, quantity, unit_price)
VALUES
  ('P001', 'O017', 'Apparel', 4, 50.47),
  ('P002', 'O026', 'Apparel', 5, 155.98),
  ('P003', 'O010', 'Toys', 5, 77.37),
  ('P004', 'O034', 'Apparel', 5, 70.28),
  ('P005', 'O019', 'Electronics', 2, 168.71),
  ('P006', 'O018', 'Electronics', 1, 10.28),
  ('P007', 'O030', 'Apparel', 5, 43.29),
  ('P008', 'O022', 'Electronics', 4, 129.17),
  ('P009', 'O007', 'Apparel', 5, 79.99),
  ('P010', 'O024', 'Home Goods', 3, 179.35),
  ('P011', 'O007', 'Apparel', 5, 52.94),
  ('P012', 'O017', 'Toys', 4, 23.50),
  ('P013', 'O037', 'Home Goods', 1, 49.99),
  ('P014', 'O017', 'Home Goods', 1, 159.20),
  ('P015', 'O036', 'Home Goods', 4, 167.44),
  ('P016', 'O009', 'Toys', 3, 22.91),
  ('P017', 'O030', 'Home Goods', 4, 58.95),
  ('P018', 'O031', 'Toys', 1, 147.24),
  ('P019', 'O003', 'Apparel', 3, 192.17),
  ('P020', 'O040', 'Home Goods', 3, 60.63),
  ('P021', 'O020', 'Home Goods', 1, 102.51),
  ('P022', 'O039', 'Home Goods', 3, 119.47),
  ('P023', 'O012', 'Apparel', 1, 109.22),
  ('P024', 'O017', 'Electronics', 4, 105.97),
  ('P025', 'O023', 'Electronics', 5, 146.77),
  ('P026', 'O013', 'Home Goods', 1, 85.02),
  ('P027', 'O028', 'Toys', 5, 16.38),
  ('P028', 'O026', 'Apparel', 4, 45.72),
  ('P029', 'O025', 'Home Goods', 5, 89.66),
  ('P030', 'O029', 'Electronics', 5, 165.87),
  ('P031', 'O024', 'Toys', 3, 114.81),
  ('P032', 'O014', 'Apparel', 3, 27.74),
  ('P033', 'O004', 'Home Goods', 2, 161.31),
  ('P034', 'O002', 'Apparel', 3, 60.53),
  ('P035', 'O034', 'Electronics', 3, 160.33),
  ('P036', 'O030', 'Home Goods', 3, 120.14),
  ('P037', 'O024', 'Toys', 4, 145.45),
  ('P038', 'O034', 'Electronics', 3, 188.54),
  ('P039', 'O025', 'Electronics', 2, 91.51),
  ('P040', 'O037', 'Apparel', 5, 22.10),
  ('P041', 'O035', 'Apparel', 4, 17.65),
  ('P042', 'O030', 'Toys', 4, 194.97),
  ('P043', 'O029', 'Home Goods', 5, 21.61),
  ('P044', 'O007', 'Toys', 4, 42.75),
  ('P045', 'O023', 'Home Goods', 1, 87.80),
  ('P046', 'O033', 'Toys', 4, 71.06),
  ('P047', 'O006', 'Apparel', 3, 173.30),
  ('P048', 'O010', 'Electronics', 2, 135.37),
  ('P049', 'O014', 'Toys', 4, 13.85),
  ('P050', 'O013', 'Toys', 1, 157.45),
  ('P051', 'O011', 'Toys', 1, 192.77),
  ('P052', 'O002', 'Electronics', 2, 124.02),
  ('P053', 'O032', 'Electronics', 5, 24.12),
  ('P054', 'O006', 'Electronics', 4, 66.07),
  ('P055', 'O028', 'Home Goods', 1, 154.07),
  ('P056', 'O019', 'Home Goods', 5, 54.58),
  ('P057', 'O020', 'Electronics', 2, 28.45),
  ('P058', 'O040', 'Home Goods', 5, 169.44),
  ('P059', 'O006', 'Electronics', 3, 147.05),
  ('P060', 'O023', 'Apparel', 2, 119.80);

CREATE INDEX idx_customers_region ON customers(region);
CREATE INDEX idx_customers_signup_date ON customers(signup_date);
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
CREATE INDEX idx_orders_date ON orders(order_date);
CREATE INDEX idx_products_order_id ON products(order_id);
CREATE INDEX idx_products_category ON products(category);