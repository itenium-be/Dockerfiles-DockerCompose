#!/usr/bin/env sh

WORDPRESS_SERVER="http://$WORDPRESS_IP:$WORDPRESS_PORT"

echo "Installing for: $WORDPRESS_SERVER"

wp core install \
  --title="My Blog" \
  --admin_user="$WORDPRESS_ADMIN_LOGIN" \
  --admin_password="$WORDPRESS_ADMIN_PWD" \
  --admin_email="admin@example.com" \
  --url="$WORDPRESS_SERVER" \
  --skip-email

# Update permalink structure.
# wp option update permalink_structure "/%year%/%monthnum%/%postname%/" --skip-themes --skip-plugins
wp theme activate twentyseventeen


# Activate plugins
# wp plugin activate wp-user-avatar




# Update DB
cp "/sql-dump/dump.sql" ~/final.sql

escapedReplace="${WORDPRESS_SERVER//\//\\/}"
sed -i "s/WORDPRESS_SERVER/$escapedReplace/g" ~/final.sql

# cat ~/final.sql | head
wp db import ~/final.sql
