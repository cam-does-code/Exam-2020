class Person < ApplicationRecord
    validates :firstname, presence: true
    validates :lastname, presence: true

    alias_attribute :person_i_d, :id
end