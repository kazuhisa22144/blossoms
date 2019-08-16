class Blossom < ApplicationRecord
    has_many :images
    has_many :languages, through: :blossom_languages

    enum season: %i(早春 春 初夏 夏 晩夏 初秋 秋 晩秋 冬 真冬 通年)


end
