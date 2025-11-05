#!/bin/sh
set -e

# Créer le répertoire s'il n'existe pas
mkdir -p /opt/keycloak/data/import

# Remplacer les variables d'environnement dans realm-export.json
envsubst < /opt/keycloak/data/import/realm-export.json.template > /opt/keycloak/data/import/realm-export.json

# S'assurer que le fichier généré a les bonnes permissions
chmod 644 /opt/keycloak/data/import/realm-export.json

# Exécuter la commande Keycloak originale
exec /opt/keycloak/bin/kc.sh "$@"