class Requerimento < ActiveRecord::Base
  belongs_to :contrato
  belongs_to :cliente
end
