class Client < ApplicationRecord
    has_many :appointments
    has_many :designers, through: :appointments
end