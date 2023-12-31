FactoryBot.define do
  factory :donante do
    apellidos { "Pérez" }
    nombre { "Juan" }
    tipo_documento { "DNI" }
    numero_documento { "11222333" }
    sexo { "masculino" }
    fecha_nacimiento { 20.years.ago.to_date }
    correo_electronico { "mail@mail.com" }
  end

  trait :datos_completos do
    tipo_donante { "voluntario" }
    segundo_nombre { "Iñani" }
    telefono { "01144445555" }
    ocupacion { "Programador" }
    grupo_sanguineo { "0" }
    factor { "positivo" }
    predonante_plaquetas { false }
    motivo_rechazo_predonante_plaquetas { "" }
    direccion { "Av. Corrientes 900" }
    codigo_postal { "1008" }
    localidad { "San Nicolás" }
    provincia { "Ciudad Autónoma de Buenos Aires" }
    pais { "Argentina" }
  end
end
