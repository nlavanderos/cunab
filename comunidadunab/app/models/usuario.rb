class Usuario  < ApplicationRecord
has_many :usuario_cursos
has_many :cursos, through: :usuario_cursos
end
