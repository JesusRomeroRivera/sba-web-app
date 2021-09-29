Feature: Cerrar sesión
  Como usuario general quiero cerrar sesion para asegurar mis datos de otros que intenten acceder a la plataforma desde el mismo dispositivo

  Scenario: el usuario cierra sesión
    Given el usuario se encuentra en el menú de navegación
    When presiona el botón de cerrar sesión
    Then el sistema cierra sesión
