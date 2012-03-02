class Projeto < ActiveRecord::Base
  belongs_to :requerimento
  belongs_to :area
  belongs_to :situacao
  belongs_to :reuniao
  belongs_to :desenvolvedor
end
