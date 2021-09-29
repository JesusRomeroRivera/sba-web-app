Feature: Buscar especialistas
  Como usuario quiero buscar especialistas para poder encontrar una solución a los problemas técnicos en el hogar

  Scenario: el usuario filtra por distrito
    Given el usuario se encuentra en la sección de servicios
    When elige un distrito en la barra de búsqueda y le da click al botón de “Buscar”
    Then el sistema le muestra todos los especialistas del distrito seleccionado, colocando primero los mejores calificados
  Scenario: el usuario filtra por especialidad
    Given el usuario se encuentra en la sección de servicios
    When elige una especialidad en la barra de búsqueda y le da click al botón de “Buscar”
    Then el sistema le muestra todos los especialistas de la especialidad seleccionada, colocando primero los mejores calificados
  Scenario: el usuario filtra por nombre
    Given el usuario se encuentra en la sección de servicios
    When escribe un nombre en la barra de búsqueda y le da click al botón de “Buscar”
    Then el sistema le muestra todos los especialistas con el nombre escrito, colocando primero los mejores calificados
