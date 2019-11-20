class Seccion < ApplicationRecord
has_one :foro
  has_many :profesor_seccions
  has_many :profesors, through: :profesor_seccions
  has_many :curso_seccions
  has_many :cursos, through:  :curso_seccions
end
