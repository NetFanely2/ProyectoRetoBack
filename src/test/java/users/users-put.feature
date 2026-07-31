Feature: Actualización de usuarios

  Background:
    * url baseUrl
    * def DataGenerator = Java.type('helpers.DataGenerator')

  Scenario: Actualizar un usuario existente
    Given path 'usuarios', '0uxuPY0cbmQhpEz1'
    And request { nome: 'Usuario Editado', email: 'editado@qa.com', password: 'teste', administrador: 'true' }
    When method put
    Then status 200
    And match response.message == 'Registro alterado com sucesso'