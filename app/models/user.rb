class User < ApplicationRecord
    has_secure_password
    has_many :enrollments
    has_many :courses, through: :enrollments
    has_many :user_lessons
    has_many :lessons, through: :user_lessons

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, length: { minimum: 1 }
    validates :email, presence: true
    validates :email, uniqueness: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
