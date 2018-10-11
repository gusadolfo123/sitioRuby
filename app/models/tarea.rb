class Tarea < ApplicationRecord
    validates :titulo, presence: true, length: { minimum: 5 }
    validates :descripcion, presence: true
end
