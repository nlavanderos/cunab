class Curso < ApplicationRecord
has_many :asistes
has_many :alumnos, through: :asistes
has_many :seccions, through: :perteneces
end
