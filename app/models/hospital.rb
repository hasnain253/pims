class Hospital < ApplicationRecord
    has_many :patients, dependent: :destroy
    has_many :physicians, dependent: :destroy
end
