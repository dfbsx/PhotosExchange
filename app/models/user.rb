class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "to nie jest adres email"}
    validates :department, presence: true
    has_many :photos
end
