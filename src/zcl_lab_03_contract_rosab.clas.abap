CLASS zcl_lab_03_contract_rosab DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA cntr_type TYPE c LENGTH 2.
  METHODS:
    SET_CREATION_DATE IMPORTING iv_creation_date type zdate.

  PROTECTED SECTION.

  DATA: creation_date type zdate.

  PRIVATE SECTION.

  DATA client TYPE string.
ENDCLASS.



CLASS zcl_lab_03_contract_rosab IMPLEMENTATION.
  METHOD set_creation_date.
    creation_date = iv_creation_date.
  ENDMETHOD.

ENDCLASS.

*Atributo con encapsulacion publica
*Cualquier código que tenga acceso al objeto puede consultar o modificar directamente el atributo, según el tipo de acceso permitido.

*Atributo con encapsulacion protejida
*Puede acceder la propia clase y sus clases descendientes (las que heredan de ella). El código externo no puede acceder directamente al atributo
*Atributo con encapsulacion privada
*Solo puede acceder la propia clase que declara el atributo. Las clases descendientes tampoco pueden acceder directamente a él >
