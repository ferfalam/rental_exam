class Protery < ApplicationRecord
    has_many :railways, dependent: :destroy 

    accepts_nested_attributes_for :railways, allow_destroy: true
end
