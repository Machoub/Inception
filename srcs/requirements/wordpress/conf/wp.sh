#!/bin/bash

echo "CLI..."

if [ -f "var/www/wordpress/wp-config.php" ]; then

    wp core download --allow-root --path=/var/www/wordpress
    echo "[DEBBUG] Wordpress config setup"

    wp core install --allow-root \
        --url="$DOMAIN_NAME" \
        --title="$WP_TITLE" \
        --admin_user="$WP_ADMIN_USR" \
        --admin_password="$WP_ADMIN_PASSW" \
        --admin_email="$WP_ADMIN_EMAIL" \
        --path=/var/www/wordpress
    
    wp user create "$WP_NORMAL_USR" "$WP_NORMAL_EMAIL" --allow-root --role="author" --user_pass=$WP_NORMAL_PASSW --path=/var/www/wordpress
fi


exec /usr/sbin/php-fpm8.2 -F
