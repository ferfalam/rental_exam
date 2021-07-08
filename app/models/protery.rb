class Protery < ApplicationRecord
    has_many :railways

    accepts_nested_attributes_for :railways
end
