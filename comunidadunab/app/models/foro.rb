class Foro < ApplicationRecord
belongs_to :seccion
has_many :mensajes
has_many :escribes

end
