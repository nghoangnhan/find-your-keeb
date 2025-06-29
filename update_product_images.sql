-- Update product images with real mechanical keyboard images
-- Run this script after starting your Spring Boot application to update existing products

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1541140532154-b024d705b90a?w=600&h=400&fit=crop' WHERE name = 'Cherry MX Board 3.0';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1601445638532-3c6f6c3aa1d6?w=600&h=400&fit=crop' WHERE name = 'Logitech G Pro X';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=600&h=400&fit=crop' WHERE name = 'Ducky One 3 TKL';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=600&h=400&fit=crop' WHERE name = 'Varmilo VA87M';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=600&h=400&fit=crop' WHERE name = 'Keychron K6';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1541140532154-b024d705b90a?w=600&h=400&fit=crop&sat=-50' WHERE name = 'Royal Kludge RK68';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=600&h=400&fit=crop&sat=-30' WHERE name = 'Anne Pro 2';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=600&h=400&fit=crop&sat=-20' WHERE name = 'Ducky One 2 Mini';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1601445638532-3c6f6c3aa1d6?w=600&h=400&fit=crop&sat=-40' WHERE name = 'Leopold FC900R';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=600&h=400&fit=crop&sat=-25' WHERE name = 'Filco Majestouch 2';

-- Add new products if they don't exist
INSERT IGNORE INTO products (name, description, price, brand, layout, switch_type, keycap_material, case_material, rgb_support, wireless_support, stock_quantity, image_url) VALUES
('Das Keyboard 4 Professional', 'Premium full-size keyboard with media controls. Professional keyboard with aluminum construction, dedicated media controls, and Cherry MX switches.', 189.99, 'Das Keyboard', 'FULL_SIZE', 'Cherry MX Blue', 'PBT', 'Aluminum', false, false, 18, 'https://images.unsplash.com/photo-1541140532154-b024d705b90a?w=600&h=400&fit=crop&sat=-60'),

('WASD Code V3', 'Minimalist TKL keyboard with backlighting. Clean, minimalist design with white LED backlighting and premium Cherry MX switches.', 159.99, 'WASD', 'TKL', 'Cherry MX Clear', 'PBT', 'Aluminum', true, false, 22, 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=600&h=400&fit=crop&sat=-45'),

('Razer BlackWidow V3 Pro', 'Wireless gaming keyboard with RGB. Premium wireless gaming keyboard with Razer switches, customizable RGB lighting, and tournament-grade performance.', 229.99, 'Razer', 'FULL_SIZE', 'Razer Green', 'ABS', 'Aluminum', true, true, 25, 'https://images.unsplash.com/photo-1601445638532-3c6f6c3aa1d6?w=600&h=400&fit=crop&sat=-35'),

('Corsair K100 RGB', 'Ultra-premium gaming keyboard. Top-of-the-line gaming keyboard with optical-mechanical switches, premium build quality, and advanced RGB lighting.', 299.99, 'Corsair', 'FULL_SIZE', 'OPX Optical', 'PBT', 'Aluminum', true, false, 12, 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=600&h=400&fit=crop&sat=-55'),

('HHKB Professional 2', 'Legendary 60% keyboard. The Holy Grail of mechanical keyboards, featuring Topre switches and minimalist design favored by programmers.', 249.99, 'PFU', 'SIXTY_PERCENT', 'Topre 45g', 'PBT', 'Plastic', false, false, 10, 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=600&h=400&fit=crop&sat=-40'),

('Realforce R2', 'Premium full-size keyboard with variable weighting. High-end keyboard with Topre switches and variable key weighting for optimal typing experience.', 279.99, 'Realforce', 'FULL_SIZE', 'Topre Variable', 'PBT', 'Aluminum', false, false, 8, 'https://images.unsplash.com/photo-1541140532154-b024d705b90a?w=600&h=400&fit=crop&sat=-70'); 