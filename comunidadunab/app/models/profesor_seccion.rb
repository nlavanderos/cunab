class ProfesorSeccion < ApplicationRecord
  belongs_to :profesor
  belongs_to :seccion
end
