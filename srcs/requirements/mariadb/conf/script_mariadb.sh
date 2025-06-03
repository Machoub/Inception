#!/bin/bash

# Vérifier si MariaDB est déjà initialisé
if [ ! -d "/var/lib/mysql/mysql" ]; then
    echo "📌 Initialisation de la base de données..."
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
fi

# Démarrer temporairement MariaDB pour configurer les utilisateurs
echo "🚀 Démarrage temporaire de MariaDB pour l'initialisation..."
mysqld_safe --datadir=/var/lib/mysql &

# Attendre que MariaDB soit complètement lancé
sleep 5

# Appliquer les configurations SQL
echo "🔧 Configuration de la base de données..."
mysql <<EOF
CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;
CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO \`${MYSQL_USER}\`@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';
FLUSH PRIVILEGES;
EOF

# Arrêter le MariaDB temporaire
mysqladmin -u root -p"${MYSQL_ROOT_PASSWORD}" shutdown

# Démarrer MariaDB en mode principal
echo "✅ Démarrage final de MariaDB..."
exec mysqld --datadir=/var/lib/mysql
