Feature: Iniciar sesión en SBA
  Como usuario general quiero iniciar sesion en SBA para poder continuar con mis actividades en la aplicación

  Scenario: el usuario inicia sesión
    Given el usuario se encuentra en la pestaña de inicio de sesión
    When complete los campos requeridos y le da al botón de “Iniciar sesión”
    Then se muestra el homepage
  Scenario: el usuario ingresa un correo erróneo
    Given el usuario se encuentra en la pestaña de inicio de sesión
    When complete los campos requeridos y le da al botón de “Iniciar sesion” y ingrese un correo incorrecto
    Then el sistema le muestra un mensaje que el correo ingresado es incorrecto o no existe
  Scenario: el usuario ingresa una contraseña incorrecta
    Given el usuario se encuentra en la pestaña de registro
    When complete los campos requeridos y le da al botón de “Registrarse” e ingresa una contraseña errónea
    Then el sistema le muestra un mensaje que la contraseña ingresada no coincide con la guardada en el sistema

