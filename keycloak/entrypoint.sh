#!/bin/sh
set -e

# Remplacer les variables d'environnement dans realm-export.json
envsubst < /opt/keycloak/data/import/realm-export.json.template > /opt/keycloak/data/import/realm-export.json

# Exécuter la commande Keycloak originale
exec /opt/keycloak/bin/kc.sh "$@"