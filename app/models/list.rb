class List < ApplicationRecord
    has_many :items
    validates_presence_of :name, message: 'debes escribir un nombre'
    validates :name, format: {with: /\D/, message: 'solo puede llevar letras'}
    validates :name, length: {minimum: 3, message: 'debe tener un mínimo de 3 caracteres'}
    validates :name, length: {maximum: 30, message: 'debe tener un máximo de 30 caracteres'}
end
