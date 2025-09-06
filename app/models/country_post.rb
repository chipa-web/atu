class CountryPost < ApplicationRecord
  belongs_to :country
  belongs_to :user
  validates :title, :content, presence: true
    attr_accessor :new_country_code
  has_one_attached :image
end
