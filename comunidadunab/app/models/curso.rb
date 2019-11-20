class Curso < ApplicationRecord
has_many :usuario_cursos
has_many :usuarios, through: :usuario_cursos
has_many :curso_seccions
has_many :seccions, through: :curso_seccions

end
