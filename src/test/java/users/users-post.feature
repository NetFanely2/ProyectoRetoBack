Feature: Pruebas del endpoint POST para usuarios

  Background:
    * url baseUrl
    * def DataGenerator = Java.type('helpers.DataGenerator')

  Scenario: Registrar usuario exitosamente (Happy Path)
    * def email = DataGenerator.getRandomEmail()
    Given path 'usuarios'
    And request { "nome": "Test User", "email": "#(email)", "password": "123", "administrador": "true" }
    When method POST
    Then status 201
    And match response.message == 'Cadastro realizado com sucesso'
    And match response._id == '#string'

  Scenario: Intentar registrar un usuario con email ya existente (Caso no valido)

    * def emailDuplicado = DataGenerator.getRandomEmail()
    Given path 'usuarios'
    And request { "nome": "User 1", "email": "#(emailDuplicado)", "password": "123", "administrador": "true" }
    When method POST
    Then status 201


    Given path 'usuarios'
    And request { "nome": "User 2", "email": "#(emailDuplicado)", "password": "123", "administrador": "true" }
    When method POST
    Then status 400
    And match response.message == 'Este email já está sendo usado'

  Scenario: Intentar registrar usuario omitiendo campos requeridos (Caso no válido)
    Given path 'usuarios'
    And request { nome: 'Tester', email: 'test@qa.com', password: '123', administrador: 'invalido' }
    When method post
    Then status 400
    And match response.administrador == "administrador deve ser 'true' ou 'false'"