class Photo < ApplicationRecord
    belongs_to :user
    has_many :downloads, dependent: nil
end
