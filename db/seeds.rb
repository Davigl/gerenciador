# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |n|
	password = "password"
	nome = Faker::Name.name
	cpf = Faker::Number.number(11)
	salario = Faker::Number.decimal(4).to_f
	data_nasc = Faker::Date.birthday(18, 44).to_date
	cep = Faker::Address.zip_code
	cidade = Faker::Address.city
	bairro = Faker::Address.secondary_address
	logradouro = Faker::Address.street_name
	num_logradouro = Faker::Address.building_number
	pais = Faker::Address.country
	uf = Faker::Address.country_code
	

	funcionario = Funcionario.create!(cpf: cpf, nome: nome, 
					salario: salario, data_nasc: data_nasc, cep: cep,
					logradouro: logradouro, num_logradouro: num_logradouro, 
					bairro: bairro, cidade: cidade, uf: uf,  pais: pais)

	email = Faker::Internet.email(funcionario.nome)

	User.create!(funcionario_id: funcionario.id, 
				 email: email,
				 password: password, 
				 password_confirmation: password)
end