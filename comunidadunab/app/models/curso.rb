class Curso < ApplicationRecord
has_many :alumno_cursos
has_many :alumnos, through: :alumno_cursos
has_many :curso_seccions
has_many :seccions, through: :curso_seccions

end
