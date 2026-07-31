Feature: Pruebas del endpoint DELETE para usuarios

  Background:
    * url baseUrl
    * def DataGenerator = Java.type('helpers.DataGenerator')
    * def randomEmail = DataGenerator.getRandomEmail()
    * def randomName = DataGenerator.getRandomName()

  Scenario: Eliminar exitosamente un usuario creado previamente

   # Given path 'usuarios'
    #And request { nome: '#(randomName)', email: '#(randomEmail)', password: 'teste', administrador: 'true' }
    #When method post
    #Then status 201
    #* def idEliminar = response._id


    Given path 'usuarios', idEliminar
    When method delete
    Then status 200
    And match response.message == 'Registro excluído com sucesso'

  Scenario: Intentar eliminar un usuario con ID inexistente
    Given path 'usuarios', '0000000000000000'
    When method delete
    Then status 200
    And match response.message == 'Nenhum registro excluído'