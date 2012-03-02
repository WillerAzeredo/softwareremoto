# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :projeto do
    nome "MyString"
    descricao "MyString"
    versao "MyString"
    requerimento nil
    area nil
    situacao nil
    reuniao nil
    desenvolvedor nil
  end
end
