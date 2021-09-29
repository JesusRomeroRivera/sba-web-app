Feature: Recuperar contraseña
    Como usuario general quiero recuperar contraseña para recuperar mi cuenta

  Scenario: el usuario recupera su contraseña
    Given el usuario se encuentra en la pestaña de recuperar contraseña
    When rellena los datos solicitados y presiona el botón de aceptar
    Then se le envía un correo para recuperar la contraseña al email registrado.
  Scenario: el usuario no recupera su contraseña
    Given el usuario se encuentra en la pestaña de recuperar contraseña
    When rellena los datos solicitados y presiona el botón de aceptar y los datos ingresados son erróneos
    Then le aparece un mensaje diciendo qué no puede recuperar su contraseña porque los datos ingresados no son válidos o no se encuentran en el sistema.
