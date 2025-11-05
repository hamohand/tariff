export const environment = {
  production: false,
  keycloak: {
    issuer: 'http://localhost:8080/realms/tariff-realm',
    realm: 'tariff-realm',
    clientId: 'frontend-client',
    redirectUri: 'http://localhost:4200/'
  },
  apiUrl: 'http://localhost:8081/api'
};
