class Country < ApplicationRecord
    has_many :country_posts, dependent: :destroy
    validates :code, presence: true, uniqueness: true, length: { is: 2 }
    has_one_attached :image
    def to_param
        code
    end
end

