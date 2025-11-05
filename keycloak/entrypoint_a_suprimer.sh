#!/bin/sh
set -e

# Créer le répertoire s'il n'existe pas
mkdir -p /opt/keycloak/data/import

# Remplacer les variables d'environnement dans realm-export.json (écrire dans /tmp d'abord)
TMP_FILE="/tmp/realm-export.json"
envsubst < /opt/keycloak/data/import/realm-export.json.template > "$TMP_FILE"

# Copier le fichier dans le répertoire d'import avec les bonnes permissions
cp "$TMP_FILE" /opt/keycloak/data/import/realm-export.json
chmod 644 /opt/keycloak/data/import/realm-export.json
rm "$TMP_FILE"

# Exécuter la commande Keycloak originale
exec /opt/keycloak/bin/kc.sh "$@"