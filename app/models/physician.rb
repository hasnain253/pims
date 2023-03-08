class Physician < ApplicationRecord
    belongs_to :hospital
    has_many :appointments, dependent: :destroy
    has_many :patients, through: :appointments
end
