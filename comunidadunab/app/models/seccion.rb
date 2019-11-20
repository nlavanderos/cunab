class Seccion < ApplicationRecord
has_one :foro

  has_many :curso_seccions
  has_many :cursos, through:  :curso_seccions
end
