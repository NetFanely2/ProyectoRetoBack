Feature: Pruebas del endpoint GET para usuarios

  Background:
    * url baseUrl
    * def userSchema = read('classpath:users/schemas/user-schema.json')

  Scenario: Obtener la lista general de usuarios
    Given path 'usuarios'
    When method GET
    Then status 200
    And match response.quantidade == '#number'
    And match response.usuarios == '#array'
    And match each response.usuarios == userSchema

  Scenario: Intentar buscar un usuario con ID que no existe
    Given path 'usuarios', 'ID_INEXISTENTE_99999'
    When method GET
    Then status 400
    And match response.id == 'id deve ter exatamente 16 caracteres alfanuméricos'