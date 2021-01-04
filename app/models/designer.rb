class Designer < ApplicationRecord
    has_many :appointments
    has_many :clients, through: :appointments
end