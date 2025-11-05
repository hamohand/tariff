export const environment = {
  production: true,
  keycloak: {
    issuer: `${window.location.origin}/realms/tariff-realm`,
    realm: 'tariff-realm',
    clientId: 'frontend-client',
    redirectUri: window.location.origin + '/'
  },
  apiUrl: '/api'
};
