class Seccion < ApplicationRecord
has_one :foro
has_one :profesor
has_one :curso

end
