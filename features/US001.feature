Feature: Registro en la plataforma
  Como usuario general quiero registrarme en la plataforma para tener mi propia cuenta
  Scenario: el usuario registra una cuenta
    Given el usuario se encuentra en la plataforma
    When complete los campos requeridos y le da al botón de “Registrarse”
    Then se registra la cuenta
  Scenario: el usuario ingresa un dato invalido
    Given el usuario se encuentra  en la pestaña de registro
    When complete los campos requeridos y le da al botón de “Registrarse” e ingresa un dato invalido
    Then el sistema muestra un mensaje en los campos erróneos
  Scenario: intenta registrarse con un correo ya registrado
    Given el usuario se encuentra en la  pestaña de registro
    When complete los campos requeridos y le da al botón de “Registrarse” y el correo ingresado ya está registrado
    Then sale un mensaje con un botón para iniciar sesión
