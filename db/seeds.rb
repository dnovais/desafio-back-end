# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TransactionType.where(description: "Débito").first_or_create({
  description: "Débito",
  kind: TransactionType.kinds['input'],
  sign: "+" 
})

TransactionType.where(description: "Boleto").first_or_create({
  description: "Boleto",
  kind: TransactionType.kinds['output'],
  sign: "-" 
})

TransactionType.where(description: "Financiamento").first_or_create({
  description: "Financiamento",
  kind: TransactionType.kinds['output'],
  sign: "-" 
})

TransactionType.where(description: "Crédito").first_or_create({
  description: "Crédito",
  kind: TransactionType.kinds['input'],
  sign: "+" 
})

TransactionType.where(description: "Recebimento Empréstimo").first_or_create({
  description: "Recebimento Empréstimo",
  kind: TransactionType.kinds['input'],
  sign: "+" 
})

TransactionType.where(description: "Vendas").first_or_create({
  description: "Vendas",
  kind: TransactionType.kinds['input'],
  sign: "+" 
})

TransactionType.where(description: "Recebimento TED").first_or_create({
  description: "Recebimento TED",
  kind: TransactionType.kinds['input'],
  sign: "+" 
})

TransactionType.where(description: "Recebimento DOC").first_or_create({
  description: "Recebimento DOC",
  kind: TransactionType.kinds['input'],
  sign: "+" 
})

TransactionType.where(description: "Aluguel").first_or_create({
  description: "Aluguel",
  kind: TransactionType.kinds['output'],
  sign: "-" 
})