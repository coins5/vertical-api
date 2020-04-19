FactoryBot.define do
  factory :exam do
    tipo_examen { 'fisiologico' }
    name { 'examen de prueba' }
    description { 'descricpcion de pruebas' }
    minimo { 10 }
    promedio { 30 }
    maximo { 50 }
  end
end
