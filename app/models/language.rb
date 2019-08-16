class Language < ApplicationRecord
    has_many :blossom_languages
    has_many :blossoms, through: :blossom_languages
end
