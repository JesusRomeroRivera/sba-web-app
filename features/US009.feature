Feature: Vista previa del perfil
  Como técnico quiero tener una vista previa de mi perfil para corroborar que la información escrita sea correcta

  Scenario: el técnico visualiza su perfil
    Given el técnico se encuentra en su perfil
    When el técnico le da click al botón de vista previa
    Then el sistema le muestra una versión previa de su perfil
