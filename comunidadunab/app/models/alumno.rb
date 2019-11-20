class Alumno   < ApplicationRecord
has_many :alumno_cursos
has_many :cursos, through: :alumno_cursos
end
