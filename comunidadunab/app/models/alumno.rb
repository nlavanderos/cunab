class Alumno < ApplicationRecord
has_many :asistes
has_many :cursos, through: :asistes
end
