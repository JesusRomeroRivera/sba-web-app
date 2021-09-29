Feature: Calificar y comentar servicio
  Como usuario quiero calificar y comentar el servicio de un especialista para brindar una opinión pública sobre el servicio

  Scenario: el usuario califica el servicio
    Given el usuario se encuentra en el popup de calificar a un especialista
    When el usuario rellena las estrellas de calificacion y le da click al boton de “Enviar”
    Then el sistema le muestra un mensaje de qué su calificación ha sido enviada de manera exitosa
  Scenario: el usuario comenta el servicio
    Given el usuario se encuentra en el popup de comentar a un especialista
    When el usuario rellena el campo de comentar y le da click al botón de “Enviar”
    Then el sistema le muestra un mensaje de qué su comentario ha sido enviado de manera exitosa
