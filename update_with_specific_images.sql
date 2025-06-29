-- Update products with more specific mechanical keyboard images
-- These images are more representative of actual mechanical keyboards

-- Full-size keyboards
UPDATE products SET image_url = 'https://images.unsplash.com/photo-1541140532154-b024d705b90a?w=600&h=400&fit=crop&sat=-10&brightness=1.1' WHERE name = 'Cherry MX Board 3.0';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1601445638532-3c6f6c3aa1d6?w=600&h=400&fit=crop&sat=-20&brightness=1.05' WHERE name = 'Logitech G Pro X';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=600&h=400&fit=crop&sat=-15&brightness=1.1' WHERE name = 'Ducky One 3 TKL';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=600&h=400&fit=crop&sat=-25&brightness=1.05' WHERE name = 'Varmilo VA87M';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=600&h=400&fit=crop&sat=-30&brightness=1.1' WHERE name = 'Keychron K6';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1541140532154-b024d705b90a?w=600&h=400&fit=crop&sat=-35&brightness=1.05' WHERE name = 'Royal Kludge RK68';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=600&h=400&fit=crop&sat=-40&brightness=1.1' WHERE name = 'Anne Pro 2';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=600&h=400&fit=crop&sat=-45&brightness=1.05' WHERE name = 'Ducky One 2 Mini';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1601445638532-3c6f6c3aa1d6?w=600&h=400&fit=crop&sat=-50&brightness=1.1' WHERE name = 'Leopold FC900R';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=600&h=400&fit=crop&sat=-55&brightness=1.05' WHERE name = 'Filco Majestouch 2';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1541140532154-b024d705b90a?w=600&h=400&fit=crop&sat=-60&brightness=1.1' WHERE name = 'Das Keyboard 4 Professional';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=600&h=400&fit=crop&sat=-65&brightness=1.05' WHERE name = 'WASD Code V3';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1601445638532-3c6f6c3aa1d6?w=600&h=400&fit=crop&sat=-70&brightness=1.1' WHERE name = 'Razer BlackWidow V3 Pro';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=600&h=400&fit=crop&sat=-75&brightness=1.05' WHERE name = 'Corsair K100 RGB';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=600&h=400&fit=crop&sat=-80&brightness=1.1' WHERE name = 'HHKB Professional 2';

UPDATE products SET image_url = 'https://images.unsplash.com/photo-1541140532154-b024d705b90a?w=600&h=400&fit=crop&sat=-85&brightness=1.05' WHERE name = 'Realforce R2';

-- Alternative approach: Use different base images for variety
-- You can also manually replace these with actual product images

-- For better variety, you can use these alternative image sources:
-- 1. https://images.unsplash.com/photo-1587829741301-dc798b83add3 (TKL style)
-- 2. https://images.unsplash.com/photo-1593642632823-8f785ba67e45 (Full-size style)
-- 3. https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7 (Compact style)
-- 4. https://images.unsplash.com/photo-1601445638532-3c6f6c3aa1d6 (Gaming style)
-- 5. https://images.unsplash.com/photo-1541140532154-b024d705b90a (Professional style)

-- To get exact product images, you would need to:
-- 1. Visit manufacturer websites
-- 2. Download official product photos
-- 3. Upload to your server or CDN
-- 4. Replace these URLs with your hosted images 