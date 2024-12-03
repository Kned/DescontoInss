# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Proponente.create(
  nome: "Eduardo",
  cpf: "123456789",
  nascimento: "05/04/1991",
  telefone_pessoal: "123456789",
  salario: "3000",
  address: Address.create(
    logradouro: "Rua 1",
    numero: "2",
    bairro: "Centro",
    cidade: "Canoas",
    estado: "Rio Grande do Sul",
    cep: "92410040"
  )
)

Proponente.create(
  nome: "Eduardo2",
  cpf: "123456789",
  nascimento: "05/04/1991",
  telefone_pessoal: "123456789",
  salario: "4000",
  address: Address.create(
    logradouro: "Rua 1",
    numero: "2",
    bairro: "Centro",
    cidade: "Canoas",
    estado: "Rio Grande do Sul",
    cep: "92410040"
  )
)

Proponente.create(
  nome: "Eduardo3",
  cpf: "123456789",
  nascimento: "05/04/1991",
  telefone_pessoal: "123456789",
  salario: "2000",
  address: Address.create(
    logradouro: "Rua 1",
    numero: "2",
    bairro: "Centro",
    cidade: "Canoas",
    estado: "Rio Grande do Sul",
    cep: "92410040"
  )
)

Proponente.create(
  nome: "Eduardo5",
  cpf: "123456789",
  nascimento: "05/04/1991",
  telefone_pessoal: "123456789",
  salario: "2500",
  address: Address.create(
    logradouro: "Rua 1",
    numero: "2",
    bairro: "Centro",
    cidade: "Canoas",
    estado: "Rio Grande do Sul",
    cep: "92410040"
  )
)

Proponente.create(
  nome: "Eduardo6",
  cpf: "123456789",
  nascimento: "05/04/1991",
  telefone_pessoal: "123456789",
  salario: "3200",
  address: Address.create(
    logradouro: "Rua 1",
    numero: "2",
    bairro: "Centro",
    cidade: "Canoas",
    estado: "Rio Grande do Sul",
    cep: "92410040"
  )
)

Proponente.create(
  nome: "Eduardo7",
  cpf: "123456789",
  nascimento: "05/04/1991",
  telefone_pessoal: "123456789",
  salario: "5100",
  address: Address.create(
    logradouro: "Rua 1",
    numero: "2",
    bairro: "Centro",
    cidade: "Canoas",
    estado: "Rio Grande do Sul",
    cep: "92410040"
  )
)

Proponente.create(
  nome: "Eduardo8",
  cpf: "123456789",
  nascimento: "05/04/1991",
  telefone_pessoal: "123456789",
  salario: "1000",
  address: Address.create(
    logradouro: "Rua 1",
    numero: "2",
    bairro: "Centro",
    cidade: "Canoas",
    estado: "Rio Grande do Sul",
    cep: "92410040"
  )
)

Proponente.create(
  nome: "Eduardo9",
  cpf: "123456789",
  nascimento: "05/04/1991",
  telefone_pessoal: "123456789",
  salario: "800",
  address: Address.create(
    logradouro: "Rua 1",
    numero: "2",
    bairro: "Centro",
    cidade: "Canoas",
    estado: "Rio Grande do Sul",
    cep: "92410040"
  )
)

Proponente.create(
  nome: "Eduardo10",
  cpf: "123456789",
  nascimento: "05/04/1991",
  telefone_pessoal: "123456789",
  salario: "300",
  address: Address.create(
    logradouro: "Rua 1",
    numero: "2",
    bairro: "Centro",
    cidade: "Canoas",
    estado: "Rio Grande do Sul",
    cep: "92410040"
  )
)
