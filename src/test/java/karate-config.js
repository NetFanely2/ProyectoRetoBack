function fn() {
var env = karate.env; // Entorno de ejecución
karate.log('karate.env:', env);
var baseUrl = ''
var user = ''
var password = ''
var nombre = ''


if (!env) {env = 'cert';}

if (env == 'dev') {
baseUrl = 'https://serverest.dev'
user = 'jeancarlos@test.com'
password = 'prueba123'
nombre = 'Jean Carlos'


} else if (env == 'cert') {
baseUrl = 'https://serverest.dev'
user = 'josephrl@test.com'
password = 'prueba456'
nombre = 'Sergio'

}

var config = {
env: env,
baseUrl: baseUrl,
user: user,
password: password,
nombre: nombre,
};
karate.configure('connectTimeout', 5000);
karate.configure('readTimeout', 5000);

return config;
}