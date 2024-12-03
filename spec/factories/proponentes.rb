FactoryBot.define do
  factory :proponente do
    nome { Faker::Name.name  }
    cpf { Faker::IdNumber.valid }
    nascimento { Faker::Date.birthday }
    telefone_pessoal { Faker::PhoneNumber.phone_number }
    telefone_referencia { Faker::PhoneNumber.phone_number }
    salario { Faker::Number.decimal % 10000 }
  end
end
