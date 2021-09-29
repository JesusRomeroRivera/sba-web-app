Feature: Modificar perfil del técnico
  Como técnico quiero modificar mi perfil para mantener mis datos actualizados en la plataforma

  Scenario: el técnico modifica su nombre
    Given el técnico se encuentra en el perfil
    When le da click al icono de editar en el campo de su nombre y modifica su nombre y le da click al botón de guardar
    Then el sistema le muestra un mensaje qué sus datos fueron actualizados de manera exitosa
  Scenario: el técnico modifica su correo
    Given el técnico se encuentra en el perfil
    When le da click al icono de editar en el campo de su correo y modifica su nombre y le da click al botón de guardar
    Then el sistema le muestra un mensaje qué sus datos fueron actualizados de manera exitosa
  Scenario: el técnico modifica su contraseña
    Given el técnico se encuentra en el perfil
    When le da click al icono de editar en el campo de su contraseña y modifica su nombre y le da click al botón de guardar
    Then el sistema le muestra un mensaje qué sus datos fueron actualizados de manera exitosa
  Scenario: el técnico modifica su foto de perfil
    Given el técnico se encuentra en el perfil
    When presiona el botón de editar, modifique su foto de perfil y le da click al botón guardar
    Then el sistema le muestra un mensaje que sus datos fueron actualizados de manera exitosa
  Scenario: el técnico modifica su teléfono
    Given el técnico se encuentra en el perfil
    When presiona el botón de editar, modifique su teléfono y le da click al botón guardar
    Then el sistema le muestra un mensaje que sus datos fueron actualizados de manera exitosa
  Scenario: el técnico modifica su distrito
    Given el técnico se encuentra en el perfil
    When presiona el botón de editar, modifique su distrito y le da click al botón guardar
    Then el sistema le muestra un mensaje que sus datos fueron actualizados de manera exitosa
  Scenario: el técnico modifica su descripción
    Given el técnico se encuentra en el perfil
    When presiona el botón de editar, modifique su descripción y le da click al botón guardar
    Then el sistema le muestra un mensaje que sus datos fueron actualizados de manera exitosa
  Scenario: el técnico modifica sus especialidades
    Given el técnico se encuentra en el perfil
    When presiona el botón de editar, modifique su especialidad y le da click al botón guardar
    Then el sistema le muestra un mensaje que sus datos fueron actualizados de manera exitosa
