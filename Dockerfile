# Gunakan image PHP dengan Apache
FROM php:8.1-apache

# Install dependencies dan PHP extensions yang diperlukan
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    zip \
    unzip \
    git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install pdo pdo_mysql gd

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy project files ke dalam container
COPY . .

# Install Laravel dependencies
RUN composer install --optimize-autoloader --no-dev

# Set file permissions
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Expose port 80
EXPOSE 80

# Jalankan perintah Laravel Artisan untuk menyiapkan environment
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=80"]
