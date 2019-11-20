class Profesor < ApplicationRecord
  has_many :profesor_seccions
  has_one :seccion , through: :profesor_seccions


end
