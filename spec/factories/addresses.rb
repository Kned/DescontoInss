FactoryBot.define do
  factory :address do
    logradouro { Faker::Address.street_name }
    numero { Faker::Number.number }
    bairro { Faker::Address.community }
    cidade { Faker::Address.city }
    estado { Faker::Address.state }
    cep { Faker::Address.postcode }
    association :proponente
  end
end
