Feature: Pruebas de usuarios de jsonplaceholder

  Background:
    * url 'https://jsonplaceholder.typicode.com/users'

  Scenario: Obtener todos los usuarios
    When method get
    Then status 200
    And match response == '#[10]'

  Scenario: Obtener usuario existente
    Given path 1
    When method get
    Then status 200
    And match response.id == 1

  Scenario: Obtener usuario inexistente
    Given path 9999
    When method get
    Then status 404

  Scenario: Crear usuario nuevo
    Given request { name: 'Nuevo', email: 'nuevo@correo.com' }
    When method post
    Then status 201
    And match response.name == 'Nuevo'

  Scenario: Actualizar usuario existente
    Given path 1
    And request { name: 'Actualizado' }
    When method put
    Then status 200
    And match response.name == 'Actualizado'

  Scenario: Eliminar usuario existente
    Given path 1
    When method delete
    Then status 200