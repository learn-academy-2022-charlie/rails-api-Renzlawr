class Animal < ApplicationRecord
    has_many :sightings
    validates :common_name, :latin_name, presence: true
    validates_uniqueness_of :common_name
    validates :common_and_latin_name_are_not_the_same
    def common_and_latin_name_are_not_the_same
        if :common_name === :latin_name
            errors.add(:common_name, 'must be different than latin name')
            errors.add(:latin_name, 'must be different than common name')
        end
    end
end
