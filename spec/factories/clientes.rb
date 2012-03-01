# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cliente do
    nome "MyString"
    endereco "MyString"
    telefone "MyString"
    cpf "MyString"
    rg "MyString"
    dtnascimento "MyString"
    email "MyString"
    funcao "MyString"
  end
end
