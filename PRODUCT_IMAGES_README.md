# Product Images Update Guide

This guide explains how to update your mechanical keyboard products with real images.

## 🖼️ Image Sources

All images are sourced from **Unsplash** - a free stock photo service that provides high-quality, royalty-free images. The images used are:

- **High-quality mechanical keyboard photos** from professional photographers
- **Consistent sizing** (600x400 pixels with crop fitting)
- **Optimized for web** with appropriate compression
- **Varied styles** to represent different keyboard types and brands

## 📋 Product List with Images

### Full-Size Keyboards
1. **Cherry MX Board 3.0** - Professional full-size keyboard
2. **Logitech G Pro X** - Gaming keyboard with hot-swappable switches
3. **Leopold FC900R** - High-end professional keyboard
4. **Das Keyboard 4 Professional** - Premium keyboard with media controls
5. **Razer BlackWidow V3 Pro** - Wireless gaming keyboard
6. **Corsair K100 RGB** - Ultra-premium gaming keyboard
7. **Realforce R2** - Premium keyboard with variable weighting

### TKL (Tenkeyless) Keyboards
1. **Ducky One 3 TKL** - Compact keyboard with RGB
2. **Varmilo VA87M** - Premium TKL with custom keycaps
3. **Filco Majestouch 2** - Professional mechanical keyboard
4. **WASD Code V3** - Minimalist TKL with backlighting

### 65% Keyboards
1. **Keychron K6** - Wireless 65% keyboard
2. **Royal Kludge RK68** - Affordable 65% with hot-swappable switches

### 60% Keyboards
1. **Anne Pro 2** - Compact wireless keyboard
2. **Ducky One 2 Mini** - Popular 60% with RGB
3. **HHKB Professional 2** - Legendary 60% keyboard

## 🚀 How to Apply the Updates

### Option 1: Automatic (Recommended)
1. **Restart your Spring Boot application**
   ```bash
   cd find-your-keeb
   mvn spring-boot:run
   ```
2. **The DataInitializer will automatically create new products with images**
3. **Existing products will keep their current data**

### Option 2: Manual Database Update
1. **Start your Spring Boot application**
2. **Connect to your MySQL database**
3. **Run the SQL script:**
   ```bash
   mysql -u root -p find_your_keeb < update_product_images.sql
   ```

### Option 3: Clear and Recreate
1. **Stop your Spring Boot application**
2. **Clear the products table:**
   ```sql
   DELETE FROM products;
   ```
3. **Restart the application** - DataInitializer will create all products with images

## 🎨 Image Customization

### Image Parameters
All images use Unsplash's URL parameters for optimization:
- `w=600` - Width 600px
- `h=400` - Height 400px
- `fit=crop` - Crop to fit dimensions
- `sat=-XX` - Saturation adjustment for variety

### Adding New Images
To add new product images:

1. **Find a mechanical keyboard image on Unsplash**
2. **Use the image URL format:**
   ```
   https://images.unsplash.com/photo-[ID]?w=600&h=400&fit=crop
   ```
3. **Update the DataInitializer.java file**
4. **Restart the application**

### Image Guidelines
- **High quality** - At least 600x400 pixels
- **Good lighting** - Well-lit, clear keyboard shots
- **Varied styles** - Different colors, layouts, and brands
- **Professional appearance** - Clean, modern aesthetic

## 🔧 Troubleshooting

### Images Not Loading
1. **Check internet connection** - Images are loaded from Unsplash
2. **Verify URL format** - Ensure URLs are properly formatted
3. **Check browser console** - Look for 404 errors

### Database Issues
1. **Verify database connection** - Check application.properties
2. **Check table structure** - Ensure products table exists
3. **Review SQL logs** - Look for any SQL errors

### Application Errors
1. **Check application logs** - Look for DataInitializer errors
2. **Verify enum values** - Ensure KeyboardLayout values match
3. **Restart application** - Clear any cached data

## 📊 Product Statistics

After applying the updates, you'll have:
- **16 total products** across different categories
- **4 layout types** (Full-size, TKL, 65%, 60%)
- **8 different brands** (Cherry, Logitech, Ducky, etc.)
- **Price range** from $69.99 to $299.99
- **Various features** (RGB, wireless, hot-swappable switches)

## 🎯 Next Steps

1. **Test the frontend** - Verify images load correctly
2. **Add more products** - Expand your catalog
3. **Customize images** - Add your own product photos
4. **Optimize performance** - Consider image caching

## 📝 Notes

- **Free to use** - All images are royalty-free from Unsplash
- **Responsive design** - Images work well on all screen sizes
- **Fast loading** - Optimized for web performance
- **Consistent quality** - All images meet professional standards

For questions or issues, check the main README.md file or the application logs. 