Feature: Reportar un técnico
  Como usuario quiero reportar un técnico para evitar que continúen realizando trabajos negligentes

  Scenario: el usuario reporta a un técnico de manera exitosa
    Given el usuario se encuentra en la pestaña de reportar a un especialista
    When el usuario rellena lo campos requeridos y le da click al boton de “Reportar”
    Then el sistema le muestra un mensaje de qué el reporte ha sido enviado de manera exitosa
  Scenario: el usuario no reporta a un técnico
    Given el usuario se encuentra en la pestaña de reportar a un especialista
    When el usuario rellena lo campos requeridos y le da click al boton de “Reportar” y algun campo es incorrecto
    Then el sistema le muestra un mensaje de qué el reporte no ha sido enviado por un error en los campos
