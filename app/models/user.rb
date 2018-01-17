class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    has_many :notes, dependent: :destroy
    has_many :habits, dependent: :destroy
end
