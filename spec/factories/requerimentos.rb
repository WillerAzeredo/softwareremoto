# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :requerimento do
    datasolicitacao "MyString"
    contrato nil
    cliente nil
  end
end
